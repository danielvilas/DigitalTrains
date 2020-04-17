EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
Title "Arduino DCC++"
Date "2020-04-16"
Rev "v0.0.1b"
Comp "Daniel Vilas"
Comment1 "Check Crystal "
Comment2 "Inductor for AVCC"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 6350 2300 2    50   BiDi ~ 0
ap_8_icp
Text HLabel 6350 4000 2    50   BiDi ~ 0
ap_0_rx
Text HLabel 6350 4100 2    50   BiDi ~ 0
ap_1_tx
Text HLabel 6350 4200 2    50   BiDi ~ 0
ad_2_int0
Text HLabel 6350 4300 2    50   BiDi ~ 0
ap_3*_int1
Text HLabel 6350 4400 2    50   BiDi ~ 0
ap_4_t0
Text HLabel 6350 4500 2    50   BiDi ~ 0
ap_5*_t1
Text HLabel 6350 4600 2    50   BiDi ~ 0
ap_6*_ain0
Text HLabel 6350 4700 2    50   BiDi ~ 0
ap_7_ain1
Text HLabel 6350 2400 2    50   BiDi ~ 0
ap_9*_osc1
Text HLabel 6350 2500 2    50   Input ~ 0
ap_10_ss
Text HLabel 6350 2600 2    50   BiDi ~ 0
ap_11*_mosi
Text HLabel 6350 2700 2    50   BiDi ~ 0
ap_12_miso
Text HLabel 6350 2800 2    50   BiDi ~ 0
ap_13_sck
Text HLabel 6350 3700 2    50   BiDi ~ 0
ap_a5_scl
Text HLabel 6350 3400 2    50   BiDi ~ 0
ap_a2
Text HLabel 6350 3300 2    50   BiDi ~ 0
ap_a1
Text HLabel 6350 3200 2    50   BiDi ~ 0
ap_a0
Text Label 6300 2800 2    50   ~ 0
sck
Text Label 6300 2700 2    50   ~ 0
miso
Text Label 6300 2600 2    50   ~ 0
mosi
Wire Wire Line
	6100 4500 6350 4500
Wire Wire Line
	6100 4200 6350 4200
Wire Wire Line
	6350 4100 6100 4100
Wire Wire Line
	6350 4000 6100 4000
Wire Wire Line
	6100 3700 6350 3700
Wire Wire Line
	6100 3500 6350 3500
Wire Wire Line
	6100 3400 6350 3400
Wire Wire Line
	6100 3300 6350 3300
Wire Wire Line
	6100 3200 6350 3200
Wire Wire Line
	6100 4400 6350 4400
Wire Wire Line
	6100 2800 6350 2800
Wire Wire Line
	6100 2700 6350 2700
Wire Wire Line
	6100 2600 6350 2600
Wire Wire Line
	6100 2500 6350 2500
Wire Wire Line
	6100 2400 6350 2400
Wire Wire Line
	6100 2300 6350 2300
Wire Wire Line
	6100 4700 6350 4700
Wire Wire Line
	6100 4600 6350 4600
Wire Wire Line
	6100 4300 6350 4300
Text HLabel 6350 3800 2    50   BiDi ~ 0
ap_rst
$Comp
L MCU_Microchip_ATmega:ATmega328PB-AU U1
U 1 1 5E94DA0E
P 5500 3500
F 0 "U1" H 5500 1911 50  0000 C CNN
F 1 "ATmega328PB-AU" H 5500 1820 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 5500 3500 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/40001906C.pdf" H 5500 3500 50  0001 C CNN
	1    5500 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3800 6100 3800
Text Label 6300 3800 2    50   ~ 0
rst
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J5
U 1 1 5E9A10F1
P 8900 1500
F 0 "J5" H 8950 1817 50  0000 C CNN
F 1 "ICSP" H 8950 1726 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x03_P2.54mm_Vertical" H 8900 1500 50  0001 C CNN
F 3 "~" H 8900 1500 50  0001 C CNN
	1    8900 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 5E9A3DB4
P 9300 1200
F 0 "#PWR012" H 9300 1050 50  0001 C CNN
F 1 "+5V" H 9315 1373 50  0000 C CNN
F 2 "" H 9300 1200 50  0001 C CNN
F 3 "" H 9300 1200 50  0001 C CNN
	1    9300 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5E9A42A7
P 9300 1700
F 0 "#PWR013" H 9300 1450 50  0001 C CNN
F 1 "GND" H 9305 1527 50  0000 C CNN
F 2 "" H 9300 1700 50  0001 C CNN
F 3 "" H 9300 1700 50  0001 C CNN
	1    9300 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 1600 9300 1600
Wire Wire Line
	9300 1600 9300 1700
Wire Wire Line
	9300 1200 9300 1400
Wire Wire Line
	9300 1400 9200 1400
Text Label 9300 1500 0    50   ~ 0
mosi
Text Label 8600 1400 2    50   ~ 0
miso
Text Label 8600 1500 2    50   ~ 0
sck
Text Label 7350 1600 2    50   ~ 0
rst
Wire Wire Line
	9300 1500 9200 1500
Wire Wire Line
	8600 1400 8700 1400
Wire Wire Line
	8700 1500 8600 1500
$Comp
L power:+5V #PWR010
U 1 1 5E9AAE04
P 7700 850
F 0 "#PWR010" H 7700 700 50  0001 C CNN
F 1 "+5V" H 7715 1023 50  0000 C CNN
F 2 "" H 7700 850 50  0001 C CNN
F 3 "" H 7700 850 50  0001 C CNN
	1    7700 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5E9ABDF6
P 7500 1200
F 0 "R2" H 7570 1246 50  0000 L CNN
F 1 "10K" H 7570 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7430 1200 50  0001 C CNN
F 3 "~" H 7500 1200 50  0001 C CNN
	1    7500 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5E9AC57F
P 7800 1200
F 0 "D1" H 7750 1300 50  0000 L CNN
F 1 "CD1206-S01575" H 7500 1400 50  0000 L CNN
F 2 "Diode_SMD:D_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7800 1200 50  0001 C CNN
F 3 "~" H 7800 1200 50  0001 C CNN
	1    7800 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 1600 7500 1600
Wire Wire Line
	7500 1350 7500 1600
Connection ~ 7500 1600
Wire Wire Line
	7500 1050 7500 900 
Wire Wire Line
	7500 900  7700 900 
Wire Wire Line
	7700 850  7700 900 
Wire Wire Line
	7700 900  7800 900 
Wire Wire Line
	7800 900  7800 1050
Connection ~ 7700 900 
Wire Wire Line
	7800 1350 7800 1600
Wire Wire Line
	7500 1600 7800 1600
Connection ~ 7800 1600
Wire Wire Line
	7800 1600 8300 1600
Connection ~ 8300 1600
Wire Wire Line
	8300 1600 8700 1600
$Comp
L power:GND #PWR09
U 1 1 5E9BA87A
P 7500 2300
F 0 "#PWR09" H 7500 2050 50  0001 C CNN
F 1 "GND" H 7505 2127 50  0000 C CNN
F 2 "" H 7500 2300 50  0001 C CNN
F 3 "" H 7500 2300 50  0001 C CNN
	1    7500 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 2300 7700 2300
Wire Wire Line
	7700 2300 7700 2100
Wire Wire Line
	8100 2100 8300 2100
Wire Wire Line
	8300 1600 8300 2100
Text HLabel 4650 2300 0    50   Input ~ 0
ap_aref
Wire Wire Line
	4650 2300 4900 2300
$Comp
L Device:C C?
U 1 1 5E9CD93E
P 5900 1800
AR Path="/5E94B185/5E9CD93E" Ref="C?"  Part="1" 
AR Path="/5E94B246/5E9CD93E" Ref="C2"  Part="1" 
F 0 "C2" H 6015 1846 50  0000 L CNN
F 1 "100nF" H 6015 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5938 1650 50  0001 C CNN
F 3 "~" H 5900 1800 50  0001 C CNN
	1    5900 1800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5E9CEC29
P 6200 1800
F 0 "#PWR08" H 6200 1550 50  0001 C CNN
F 1 "GND" V 6205 1672 50  0000 R CNN
F 2 "" H 6200 1800 50  0001 C CNN
F 3 "" H 6200 1800 50  0001 C CNN
	1    6200 1800
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 5E9CF078
P 5550 1500
F 0 "#PWR07" H 5550 1350 50  0001 C CNN
F 1 "+5V" H 5565 1673 50  0000 C CNN
F 2 "" H 5550 1500 50  0001 C CNN
F 3 "" H 5550 1500 50  0001 C CNN
	1    5550 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E9CF88B
P 5250 1800
AR Path="/5E94B185/5E9CF88B" Ref="C?"  Part="1" 
AR Path="/5E94B246/5E9CF88B" Ref="C1"  Part="1" 
F 0 "C1" H 5365 1846 50  0000 L CNN
F 1 "100nF" H 5365 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5288 1650 50  0001 C CNN
F 3 "~" H 5250 1800 50  0001 C CNN
	1    5250 1800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5E9D3ADC
P 4800 1800
F 0 "#PWR05" H 4800 1550 50  0001 C CNN
F 1 "GND" V 4805 1672 50  0000 R CNN
F 2 "" H 4800 1800 50  0001 C CNN
F 3 "" H 4800 1800 50  0001 C CNN
	1    4800 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 1800 5600 2000
Wire Wire Line
	5600 1800 5750 1800
Wire Wire Line
	5500 2000 5500 1800
Wire Wire Line
	5500 1800 5400 1800
Wire Wire Line
	5550 1500 5550 1800
Wire Wire Line
	5550 1800 5600 1800
Connection ~ 5600 1800
Wire Wire Line
	5550 1800 5500 1800
Connection ~ 5550 1800
Connection ~ 5500 1800
Wire Wire Line
	5100 1800 4800 1800
Wire Wire Line
	6050 1800 6200 1800
$Comp
L power:GND #PWR06
U 1 1 5E9DB6DC
P 5500 5400
F 0 "#PWR06" H 5500 5150 50  0001 C CNN
F 1 "GND" H 5505 5227 50  0000 C CNN
F 2 "" H 5500 5400 50  0001 C CNN
F 3 "" H 5500 5400 50  0001 C CNN
	1    5500 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5400 5500 5000
$Comp
L Device:Resonator Y1
U 1 1 5E9DECE1
P 8000 2950
F 0 "Y1" V 8046 3061 50  0000 L CNN
F 1 "CSTLS16M0X53-A0" V 7700 2550 50  0000 L CNN
F 2 "Crystal:Resonator_muRata_CSTLSxxxX-3Pin_W5.5mm_H3.0mm" H 7975 2950 50  0001 C CNN
F 3 "~" H 7975 2950 50  0001 C CNN
	1    8000 2950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5E9DFC22
P 8300 3000
F 0 "#PWR011" H 8300 2750 50  0001 C CNN
F 1 "GND" H 8305 2827 50  0000 C CNN
F 2 "" H 8300 3000 50  0001 C CNN
F 3 "" H 8300 3000 50  0001 C CNN
	1    8300 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3000 8300 2950
Wire Wire Line
	8300 2950 8200 2950
Wire Wire Line
	8000 2800 7100 2800
Wire Wire Line
	6900 2800 6900 2900
Wire Wire Line
	6900 2900 6100 2900
Wire Wire Line
	6100 3000 6900 3000
Wire Wire Line
	6900 3000 6900 3100
Wire Wire Line
	6900 3100 7100 3100
$Comp
L Device:R R1
U 1 1 5E9E4775
P 7100 2950
F 0 "R1" H 7170 2996 50  0000 L CNN
F 1 "1M" H 7170 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7030 2950 50  0001 C CNN
F 3 "~" H 7100 2950 50  0001 C CNN
	1    7100 2950
	1    0    0    -1  
$EndComp
Connection ~ 7100 2800
Wire Wire Line
	7100 2800 6900 2800
Connection ~ 7100 3100
Wire Wire Line
	7100 3100 8000 3100
$Comp
L power:GND #PWR04
U 1 1 5EA01542
P 4550 4500
F 0 "#PWR04" H 4550 4250 50  0001 C CNN
F 1 "GND" H 4555 4327 50  0000 C CNN
F 2 "" H 4550 4500 50  0001 C CNN
F 3 "" H 4550 4500 50  0001 C CNN
	1    4550 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4000 4900 4000
Wire Wire Line
	4900 4100 4550 4100
Wire Wire Line
	4550 4000 4550 4100
Connection ~ 4550 4100
Wire Wire Line
	4550 4100 4550 4200
Wire Wire Line
	4900 4200 4550 4200
Connection ~ 4550 4200
Wire Wire Line
	4550 4200 4550 4300
Wire Wire Line
	4900 4300 4550 4300
Connection ~ 4550 4300
Wire Wire Line
	4550 4300 4550 4500
$Comp
L Switch:SW_Push SW1
U 1 1 5EA35C40
P 7900 2100
F 0 "SW1" H 7900 2385 50  0000 C CNN
F 1 "SW_Push" H 7900 2294 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 7900 2300 50  0001 C CNN
F 3 "~" H 7900 2300 50  0001 C CNN
	1    7900 2100
	1    0    0    -1  
$EndComp
Text HLabel 6350 3500 2    50   Input ~ 0
ap_a3
Text HLabel 6350 3600 2    50   Input ~ 0
ap_a4_sda
Wire Wire Line
	6100 3600 6350 3600
$EndSCHEMATC
