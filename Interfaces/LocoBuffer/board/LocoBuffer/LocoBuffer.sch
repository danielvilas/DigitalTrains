EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 4550 2950 1000 350 
U 60685830
F0 "LocoNet" 50
F1 "LocoNetInterface.sch" 50
F2 "Tx" I R 5550 3100 50 
F3 "Rx" O R 5550 3200 50 
$EndSheet
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 60688F0E
P 7800 3600
AR Path="/60685830/60688F0E" Ref="J?"  Part="1" 
AR Path="/60688F0E" Ref="J?"  Part="1" 
F 0 "J?" H 7880 3592 50  0000 L CNN
F 1 "Conn_01x04" H 7880 3501 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 7800 3600 50  0001 C CNN
F 3 "~" H 7800 3600 50  0001 C CNN
	1    7800 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60688F14
P 7500 3850
AR Path="/60685830/60688F14" Ref="#PWR?"  Part="1" 
AR Path="/60688F14" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7500 3600 50  0001 C CNN
F 1 "GND" H 7505 3677 50  0000 C CNN
F 2 "" H 7500 3850 50  0001 C CNN
F 3 "" H 7500 3850 50  0001 C CNN
	1    7500 3850
	1    0    0    -1  
$EndComp
Text Label 7300 3700 0    50   ~ 0
RX
Text Label 7300 3600 0    50   ~ 0
TX
$Comp
L power:+5V #PWR?
U 1 1 60688F1C
P 7500 3450
AR Path="/60685830/60688F1C" Ref="#PWR?"  Part="1" 
AR Path="/60688F1C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7500 3300 50  0001 C CNN
F 1 "+5V" H 7515 3623 50  0000 C CNN
F 2 "" H 7500 3450 50  0001 C CNN
F 3 "" H 7500 3450 50  0001 C CNN
	1    7500 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3600 7600 3600
Wire Wire Line
	7300 3700 7600 3700
Wire Wire Line
	7600 3800 7500 3800
Wire Wire Line
	7500 3800 7500 3850
Wire Wire Line
	7500 3450 7500 3500
Wire Wire Line
	7500 3500 7600 3500
Text Label 5700 3100 0    50   ~ 0
TX
Text Label 5700 3200 0    50   ~ 0
RX
Wire Wire Line
	5700 3200 5550 3200
Wire Wire Line
	5550 3100 5700 3100
$Sheet
S 4650 3750 1450 650 
U 60687109
F0 "Arduino Leonardo" 50
F1 "ArduinoLeonardo.sch" 50
$EndSheet
$EndSCHEMATC
