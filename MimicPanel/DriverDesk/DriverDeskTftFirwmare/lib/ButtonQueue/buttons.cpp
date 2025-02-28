#include "buttons.h"

u_int16_t q_ports[NUM_EVENTS];
u_int16_t lastData=0;

u_int8_t q_ports_w=0;//next to write
u_int8_t q_ports_r=0;//next to read
u_int8_t q_ports_s=0;//next to read
//u_int8_t lostEvents=0;


ButtonQueueStatus pushPorts(u_int16_t btns){
    //TODO: Check buttons
    if(btns == lastData){
        return BTNQ_ERROR;
    }

    if(q_ports_s==NUM_EVENTS){
        //if write pointer requires write over read pointer we lost older register
        q_ports_r=(q_ports_r+1)%NUM_EVENTS;
        //lostEvents++;
        //Serial.printf("Lost Event (%u)\n",lostEvents);
    }else{
        q_ports_s++;
    }

    q_ports[q_ports_w]=btns;
    q_ports_w=(q_ports_w+1)%NUM_EVENTS;
    lastData=btns;
    
    if(q_ports_s>NUM_EVENTS){//Protection code
        q_ports_w=0;//next to write
        q_ports_r=0;//next to read
        q_ports_s=0;
        return BTNQ_ERROR;
    }

    return BTNQ_SUCCESS;
}

ButtonQueueStatus popPorts(u_int16_t* btns){
    if(q_ports_s==0){
        return BTNQ_ERROR;
    }
    *btns=q_ports[q_ports_r];
    q_ports_r=(q_ports_r+1)%(NUM_EVENTS);
    q_ports_s--;

    if(q_ports_s<0){ //Protection code
        q_ports_w=0;//next to write
        q_ports_r=0;//next to read
        q_ports_s=0;
        return BTNQ_ERROR;
    }
    return BTNQ_SUCCESS;
}


u_int16_t convertToBtns(u_int16_t portA, u_int16_t portB){
    uint16_t ret=0;
    if(BTN_1_PORT & BTN_1_MASK) ret+=(1<<0);
    if(BTN_2_PORT & BTN_2_MASK) ret+=(1<<1);
    if(BTN_3_PORT & BTN_3_MASK) ret+=(1<<2);
    if(BTN_4_PORT & BTN_4_MASK) ret+=(1<<3);
    if(BTN_5_PORT & BTN_5_MASK) ret+=(1<<4);
    if(BTN_6_PORT & BTN_6_MASK) ret+=(1<<5);
    if(BTN_7_PORT & BTN_7_MASK) ret+=(1<<6);
    if(BTN_8_PORT & BTN_8_MASK) ret+=(1<<7);
    if(BTN_9_PORT & BTN_9_MASK) ret+=(1<<8);
    if(BTN_10_PORT & BTN_10_MASK) ret+=(1<<9);
    if(BTN_S_PORT & BTN_S_MASK) ret+=(1<<10);
    if(BTN_H_PORT & BTN_H_MASK) ret+=(1<<11);
    return ret;
}

#ifdef PIO_UNIT_TESTING
void tst_reset(){
    lastData=255;
    q_ports_w=0;//next to write
    q_ports_r=0;//next to read
    q_ports_s=0;
}
void tst_print_queue(){

}
#endif