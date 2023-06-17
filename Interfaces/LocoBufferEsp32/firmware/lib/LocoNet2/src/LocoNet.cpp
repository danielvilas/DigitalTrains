/****************************************************************************
 * 	Copyright (C) 2009..2013 Alex Shepherd
 *	Copyright (C) 2013 Damian Philipp
 *
 * 	Portions Copyright (C) Digitrax Inc.
 *	Portions Copyright (C) Uhlenbrock Elektronik GmbH
 *
 * 	This library is free software; you can redistribute it and/or
 * 	modify it under the terms of the GNU Lesser General Public
 * 	License as published by the Free Software Foundation; either
 * 	version 2.1 of the License, or (at your option) any later version.
 *
 * 	This library is distributed in the hope that it will be useful,
 * 	but WITHOUT ANY WARRANTY; without even the implied warranty of
 * 	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * 	Lesser General Public License for more details.
 *
 * 	You should have received a copy of the GNU Lesser General Public
 * 	License along with this library; if not, write to the Free Software
 * 	Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 *****************************************************************************
 *
 * 	IMPORTANT:
 *
 * 	Some of the message formats used in this code are Copyright Digitrax, Inc.
 * 	and are used with permission as part of the MRRwA (previously EmbeddedLocoNet) project.
 *  That permission does not extend to uses in other software products. If you wish
 * 	to use this code, algorithm or these message formats outside of
 * 	MRRwA, please contact Digitrax Inc, for specific permission.
 *
 * 	Note: The sale any LocoNet device hardware (including bare PCB's) that
 * 	uses this or any other LocoNet software, requires testing and certification
 * 	by Digitrax Inc. and will be subject to a licensing agreement.
 *
 * 	Please contact Digitrax Inc. for details.
 *
 *****************************************************************************
 *
 * 	IMPORTANT:
 *
 * 	Some of the message formats used in this code are Copyright Uhlenbrock Elektronik GmbH
 * 	and are used with permission as part of the MRRwA (previously EmbeddedLocoNet) project.
 *  That permission does not extend to uses in other software products. If you wish
 * 	to use this code, algorithm or these message formats outside of
 * 	MRRwA, please contact Copyright Uhlenbrock Elektronik GmbH, for specific permission.
 *
 *****************************************************************************
 * 	DESCRIPTION
 * 	This module provides functions that manage the sending and receiving of LocoNet packets.
 *
 * 	As bytes are received from the LocoNet, they are stored in a circular
 * 	buffer and after a valid packet has been received it can be read out.
 *
 * 	When packets are sent successfully, they are also appended to the Receive
 * 	circular buffer so they can be handled like they had been received from
 * 	another device.
 *
 * 	Statistics are maintained for both the send and receiving of packets.
 *
 * 	Any invalid packets that are received are discarded and the stats are
 * 	updated approproately.
 *
 *****************************************************************************/

#include <string.h>
#include <stdio.h>

#include "LocoNet.h"

const char * LoconetStatusStrings[] = {
	"CD Backoff",
	"Prio Backoff",
	"Network Busy",
	"Done",
	"Collision",
	"Unknown Error",
	"Retry Error"
};

LocoNetPhy::LocoNetPhy(LocoNetBus * bus) : bus(bus) {
  bus->addConsumer(this);
}

bool LocoNetPhy::begin() {
  return true;
}

void LocoNetPhy::end() {
}

LN_STATUS LocoNetPhy::onMessage(const LnMsg& msg) {
  LnMsg copy = msg;
  return send(&copy);
}

const char* LocoNetPhy::getStatusStr(LN_STATUS Status) {
  if ((Status >= LN_CD_BACKOFF) && (Status <= LN_RETRY_ERROR)) {
    return LoconetStatusStrings[Status];
  }

  return "Invalid Status";
}

uint8_t writeChecksum(LnMsg &msg) {
  uint8_t len = msg.length();
  uint8_t ck = 0xFF;
  for(uint8_t index = 0; index < len - 1; index++) {
    ck ^= msg.data[index];
  }
  msg.data[len - 1] = ck;
  return ck;
}

LN_STATUS LocoNetPhy::send(LnMsg *pPacket, uint8_t ucPrioDelay) {
  LN_STATUS enReturn;
  bool ucWaitForEnterBackoff;

  /* clip maximum prio delay */
  if(ucPrioDelay > LN_BACKOFF_MAX) {
      ucPrioDelay = LN_BACKOFF_MAX;
  }

  uint8_t packetLen = pPacket->length();

  ///* First calculate the checksum as it may not have been done */
  // this is not in Bus.broadcast
  //writeChecksum(*pPacket);
 

#ifdef DEBUG_OUTPUT
  char _msg[100] = "LoconetPacket";
  int _l = strlen(_msg);
  for(uint8_t i=0; i<packetLen; i++)
    _l += sprintf(_msg+_l, " %02x", pPacket->data[i]);  
    // use formatMsg for that
  DEBUG("%s", _msg);
#endif
  
  for (uint8_t ucTry = 0; ucTry < LN_TX_RETRIES_MAX; ucTry++) {
    // wait previous traffic and than prio delay and than try tx
    // don't want to abort do/while loop before we did not see the backoff state once
    ucWaitForEnterBackoff = true;
    do {
      //DEBUG("calling sendLocoNetPacketTry(%p, %d, %d) attempt %d", packet, packetLen, ucPrioDelay, ucTry);
      enReturn = sendLocoNetPacketTry(pPacket->data, packetLen, ucPrioDelay);
      DEBUG("attempt %d, sendLocoNetPacketTry(%p, len=%d, priority=%d)=%s", 
          ucTry, packet, packetLen, ucPrioDelay,
          enReturn==LN_CD_BACKOFF?"LN_CD_BACKOFF" : enReturn==LN_PRIO_BACKOFF?"LN_PRIO_BACKOFF" : enReturn==LN_NETWORK_BUSY?"LN_NETWORK_BUSY": enReturn==LN_DONE?"LN_DONE": enReturn==LN_COLLISION?"LN_COLLISION": enReturn==LN_UNKNOWN_ERROR?"LN_UNKNOWN_ERROR":"LN_RETRY_ERROR"); 
      if (enReturn == LN_DONE) { // success?
        return LN_DONE;
      }

      if (enReturn == LN_PRIO_BACKOFF) {
        // now entered backoff -> next state != LN_BACKOFF is worth incrementing the try counter
        ucWaitForEnterBackoff = false;
      }
      //break;
    } while ((enReturn == LN_CD_BACKOFF) ||                             // waiting CD backoff
             (enReturn == LN_PRIO_BACKOFF) ||                           // waiting master+prio backoff
            ((enReturn == LN_NETWORK_BUSY) && ucWaitForEnterBackoff));  // or within any traffic unfinished
    // failed -> next try going to higher prio = smaller prio delay
    if (ucPrioDelay > LN_BACKOFF_MIN) {
      ucPrioDelay--;
    }
  }
  txStats.txErrors++;
  return LN_RETRY_ERROR;
}

LN_STATUS LocoNetPhy::send(LnMsg *pPacket) {
  return send(pPacket, LN_BACKOFF_INITIAL);
}


LnRxStats* LocoNetPhy::getRxStats() {
  return &rxBuffer.stats;
}

LnTxStats* LocoNetPhy::getTxStats() {
  return &txStats;
}

void LocoNetPhy::consume(uint8_t newByte) {
	LnMsg * rxPacket = rxBuffer.addByte(newByte);
  
	if (rxPacket != nullptr) {
    bus->broadcast(*rxPacket, this);
	}
}






LnMsg makeMsg(uint8_t OpCode, uint8_t Data1, uint8_t Data2) {
  LnMsg SendPacket;

  SendPacket.data[0] = OpCode;
  SendPacket.data[1] = Data1;
  SendPacket.data[2] = Data2;

  writeChecksum(SendPacket);

  return SendPacket;
}


LN_STATUS reportPower(LocoNetBus *ln, bool state) {
  LnMsg SendPacket;

  if (state) {
    SendPacket.data[ 0 ] = OPC_GPON;
  } else {
    SendPacket.data[ 0 ] = OPC_GPOFF;
  }

  writeChecksum(SendPacket);
  return ln->broadcast( SendPacket ) ;
}


LnMsg makeSwRec(uint16_t address, bool output, bool thrown) {
  address--;
  uint8_t addrH = (address >> 7) & 0x0F;
  uint8_t addrL = address & 0x7F;

  if (output) {
    addrH |= OPC_SW_REQ_OUT;
  }

  if (!thrown) {
    addrH |= OPC_SW_REQ_DIR;
  }

  return makeMsg(OPC_SW_REQ, addrL, addrH);
}


LN_STATUS requestSwitch(LocoNetBus *ln, uint16_t address, uint8_t output, uint8_t direction) {
  return ln->broadcast( makeSwRec(address, output==1, direction==0) );
}

LN_STATUS reportSwitch(LocoNetBus *ln, uint16_t Address) {
  Address -= 1;
  return ln->broadcast( makeMsg(OPC_SW_STATE, (Address & 0x7F), ((Address >> 7) & 0x0F) ) );
}

LN_STATUS reportSensor(LocoNetBus *ln,  uint16_t Address, uint8_t State ) {
	uint8_t AddrH = ((--Address >> 8) & 0x0F) | OPC_INPUT_REP_CB;
	uint8_t AddrL = (Address >> 1) & 0x7F;
	if( Address % 2) {
		AddrH |= OPC_INPUT_REP_SW;
  }

	if(State) {
		AddrH |= OPC_INPUT_REP_HI;
  }

  return ln->broadcast( makeMsg(OPC_INPUT_REP, AddrL, AddrH) );
}







LocoNetDispatcher::LocoNetDispatcher(LocoNetBus *ln): ln(ln) {
  ln->addConsumer(this);
}

LN_STATUS LocoNetDispatcher::onMessage(const LnMsg& msg) {
  processPacket(&msg);
  return LN_DONE;
}

LN_STATUS LocoNetDispatcher::send(LnMsg *txPacket) {
  writeChecksum(*txPacket);
  return ln->broadcast(*txPacket);
}

LN_STATUS LocoNetDispatcher::send(uint8_t opCode, uint8_t data1, uint8_t data2) {
  LnMsg tx = makeMsg( opCode, data1, data2);
  return ln->broadcast( tx );
}


void LocoNetDispatcher::processPacket(const LnMsg *packet) {

    if(callbacks.find(CALLBACK_FOR_ALL_OPCODES) != callbacks.end()) {
      for(const auto &cb : callbacks[CALLBACK_FOR_ALL_OPCODES]) {
        cb(packet);
      }
    }

    if(callbacks.find(packet->sz.command) != callbacks.end()) {
      for(const auto &cb : callbacks[packet->sz.command]) {
        cb(packet);
      }
#if defined(DEBUG_OUTPUT)
    } else {
      DEBUG("No callbacks for OpCode %02x", packet->sz.command);
#endif
    }
    

}

void LocoNetDispatcher::onPacket(uint8_t opCode, std::function<void(const LnMsg *)> callback) {

  callbacks[opCode].push_back(callback);
  DEBUG("registering callback function for OpCode: %02x, %d callbacks for this OpCode.", 
    opCode, callbacks[opCode].size());
}

void LocoNetDispatcher::onSensorChange(std::function<void(uint16_t, bool)> callback) {
  onPacket(OPC_INPUT_REP, [callback](const LnMsg *packet) {
    uint16_t address = (packet->srq.sw1 | ((packet->srq.sw2 & 0x0F ) << 7));
    address <<= 1;
    address += (packet->ir.in2 & OPC_INPUT_REP_SW) ? 2 : 1;
    DEBUG("Sensor addr:%d, state:%d", address, packet->ir.in2 & OPC_INPUT_REP_HI);
    callback(address, packet->ir.in2 & OPC_INPUT_REP_HI);
  });
}

void LocoNetDispatcher::onSwitchRequest(std::function<void(uint16_t, bool, bool)> callback) {
  onPacket(OPC_SW_REQ, [callback](const LnMsg *packet) {
    uint16_t address = (packet->srq.sw1 | ((packet->srq.sw2 & 0x0F ) << 7)) + 1;
    DEBUG("Switch Request addr:%d, out:%d, dir:%d", address, packet->srq.sw2 & OPC_SW_REQ_OUT, packet->srq.sw2 & OPC_SW_REQ_DIR);
    callback(address, packet->srq.sw2 & OPC_SW_REQ_OUT, packet->srq.sw2 & OPC_SW_REQ_DIR);
  });
}

void LocoNetDispatcher::onSwitchReport(std::function<void(uint16_t, bool, bool)> callback) {
  onPacket(OPC_SW_REP, [callback](const LnMsg *packet) {
    uint16_t address = (packet->srq.sw1 | ((packet->srq.sw2 & 0x0F ) << 7)) + 1;
    DEBUG("Switch Report addr:%d, out:%d, dir:%d", address, packet->srq.sw2 & OPC_SW_REP_HI, packet->srq.sw2 & OPC_SW_REP_SW);
    callback(address, packet->srq.sw2 & OPC_SW_REP_HI, packet->srq.sw2 & OPC_SW_REP_SW);
  });
}

void LocoNetDispatcher::onSwitchState(std::function<void(uint16_t, bool, bool)> callback) {
  onPacket(OPC_SW_STATE, [callback](const LnMsg *packet) {
    uint16_t address = (packet->srq.sw1 | ((packet->srq.sw2 & 0x0F ) << 7)) + 1;
    DEBUG("Switch State addr:%d, out:%d, dir:%d", address, packet->srq.sw2 & OPC_SW_REQ_OUT, packet->srq.sw2 & OPC_SW_REQ_DIR);
    callback(address, packet->srq.sw2 & OPC_SW_REQ_OUT, packet->srq.sw2 & OPC_SW_REQ_DIR);
  });
}

void LocoNetDispatcher::onPowerChange(std::function<void(bool)> callback) {
  onPacket(OPC_GPON, [callback](const LnMsg *packet) {
    DEBUG("Power ON");
    callback(true);
  });
  onPacket(OPC_GPON, [callback](const LnMsg *packet) {
    DEBUG("Power OFF");
    callback(false);
  });
}

void LocoNetDispatcher::onMultiSenseDeviceInfo(std::function<void(uint8_t, uint8_t, bool, bool)> callback) {
  onPacket(OPC_MULTI_SENSE, [callback](const LnMsg *packet) {
    if((packet->data[1] & OPC_MULTI_SENSE_MSG) == OPC_MULTI_SENSE_DEVICE_INFO &&
      ((packet->msdi.arg3 & 0xF0) == 0x30 || (packet->msdi.arg3 & 0xF0) == 0x10)) {
      uint8_t mask = 1;
      for(uint8_t index = 0; index < 4; index++) {
        callback(OPC_MULTI_SENSE_BOARD_ID(packet->msdi.arg1, packet->msdi.arg2),
          index + 1, packet->msdi.arg3 & mask, packet->msdi.arg4 & mask);
        mask <<= 1;
      }
    }
  });
}

void LocoNetDispatcher::onMultiSenseTransponder(std::function<void(uint16_t, uint8_t, uint16_t, bool)> callback) {
  onPacket(OPC_MULTI_SENSE, [callback](const LnMsg *packet) {
    if((packet->data[1] & OPC_MULTI_SENSE_MSG) == OPC_MULTI_SENSE_ABSENT ||
       (packet->data[1] & OPC_MULTI_SENSE_MSG) == OPC_MULTI_SENSE_PRESENT) {
      callback(OPC_MULTI_SENSE_BOARD_ADDRESS(packet->mstr.zone, packet->mstr.type),
        OPC_MULTI_SENSE_ZONE_ID(packet->mstr.zone),
        OPC_MULTI_SENSE_LOCO_ADDRESS(packet->mstr.adr1, packet->mstr.adr2),
        OPC_MULTI_SENSE_PRESENCE(packet->mstr.zone));
    }
  });
}


LnMsg makeLongAck(uint8_t replyToOpc, uint8_t ack) {
  LnMsg lack;
  lack.lack.command = OPC_LONG_ACK;
  lack.lack.opcode = replyToOpc & 0x7F;
  lack.lack.ack1 = ack;
  writeChecksum(lack);
  return lack;
}

const char * fmtOpcode(uint8_t opc) {
  switch(opc) {
    case  OPC_BUSY: return "BUSY";
    case  OPC_GPOFF: return "GPOFF";
    case  OPC_GPON: return "GPON";
    case  OPC_IDLE: return "IDLE";
    case  OPC_LOCO_SPD: return "LOCO_SPD";
    case  OPC_LOCO_DIRF: return "LOCO_DIRF";
    case  OPC_LOCO_SND: return "LOCO_SND";
    case  OPC_SW_REQ: return "SW_REQ";
    case  OPC_SW_REP: return "SW_REP";
    case  OPC_INPUT_REP: return "INPUT_REP";
    case  OPC_UNKNOWN: return "UNKNOWN";
    case  OPC_LONG_ACK: return "LONG_ACK";
    case  OPC_SLOT_STAT1: return "SLOT_STAT1";
    case  OPC_CONSIST_FUNC: return "CONSIST_FUNC";
    case  OPC_UNLINK_SLOTS: return "UNLINK_SLOTS";
    case  OPC_LINK_SLOTS: return "LINK_SLOTS";
    case  OPC_MOVE_SLOTS: return "MOVE_SLOTS";
    case  OPC_RQ_SL_DATA: return "RQ_SL_DATA";
    case  OPC_SW_STATE: return "SW_STATE";
    case  OPC_SW_ACK: return "SW_ACK";
    case  OPC_LOCO_ADR: return "LOCO_ADR";
    case  OPC_MULTI_SENSE: return "MULTI_SENSE";
    case  OPC_PEER_XFER: return "PEER_XFER";
    case  OPC_SL_RD_DATA: return "SL_RD_DATA";
    case  OPC_IMM_PACKET: return "IMM_PACKET";
    case  OPC_IMM_PACKET_2: return "IMM_PACKET_2";
    case  OPC_WR_SL_DATA: return "WR_SL_DATA";
    default: return "?";
  }
}

size_t formatMsg(const LnMsg & msg, char* dst, size_t len) {
  size_t t = 0;
  uint8_t ln = msg.length();
  t += snprintf(dst, len, "%s(%02X) ", fmtOpcode(msg.data[0]), msg.data[0] );
  for(int j=1; j<ln; j++) {
      t += snprintf(dst+t, len-t, "%02X ", msg.data[j]);
      if(t>=len) return len-1;
  }
  return t;
}
