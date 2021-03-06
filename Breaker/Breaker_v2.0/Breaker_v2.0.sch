EESchema Schematic File Version 4
LIBS:Breaker_v2.0-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Breaker_v2.0-rescue:LM339 U1
U 1 1 5468EF6C
P 1800 2550
F 0 "U1" H 1850 2750 60  0000 C CNN
F 1 "LM339" H 1900 2350 50  0000 C CNN
F 2 "SMD_Packages:SOIC-14_W" H 1800 2550 60  0001 C CNN
F 3 "" H 1800 2550 60  0000 C CNN
	1    1800 2550
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:LM339 U1
U 3 1 5468EF9B
P 8250 2050
F 0 "U1" H 8300 2250 60  0000 C CNN
F 1 "LM339" H 8350 1850 50  0000 C CNN
F 2 "SMD_Packages:SOIC-14_W" H 8250 2050 60  0001 C CNN
F 3 "" H 8250 2050 60  0000 C CNN
	3    8250 2050
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:LM339 U1
U 2 1 5468EFB9
P 3200 2650
F 0 "U1" H 3250 2850 60  0000 C CNN
F 1 "LM339" H 3300 2450 50  0000 C CNN
F 2 "SMD_Packages:SOIC-14_W" H 3200 2650 60  0001 C CNN
F 3 "" H 3200 2650 60  0000 C CNN
	2    3200 2650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5468EFFD
P 1700 2200
F 0 "#PWR01" H 1700 2300 30  0001 C CNN
F 1 "VCC" H 1700 2300 30  0000 C CNN
F 2 "" H 1700 2200 60  0000 C CNN
F 3 "" H 1700 2200 60  0000 C CNN
	1    1700 2200
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:GND-RESCUE-Breaker_v2.0 #PWR02
U 1 1 5468F08E
P 1700 2900
F 0 "#PWR02" H 1700 2900 30  0001 C CNN
F 1 "GND" H 1700 2830 30  0001 C CNN
F 2 "" H 1700 2900 60  0000 C CNN
F 3 "" H 1700 2900 60  0000 C CNN
	1    1700 2900
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:LED-RESCUE-Breaker_v2.0 D1
U 1 1 5468F10F
P 3700 2400
F 0 "D1" H 3700 2500 50  0000 C CNN
F 1 "LED" H 3700 2300 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 3700 2400 60  0001 C CNN
F 3 "" H 3700 2400 60  0000 C CNN
	1    3700 2400
	0    1    1    0   
$EndComp
$Comp
L Breaker_v2.0-rescue:R-RESCUE-Breaker_v2.0 R5
U 1 1 5468F190
P 2500 1500
F 0 "R5" V 2580 1500 40  0000 C CNN
F 1 "470" V 2507 1501 40  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2430 1500 30  0001 C CNN
F 3 "" H 2500 1500 30  0000 C CNN
	1    2500 1500
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:R-RESCUE-Breaker_v2.0 R1
U 1 1 5468F1D4
P 950 1500
F 0 "R1" V 1030 1500 40  0000 C CNN
F 1 "33K" V 957 1501 40  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 880 1500 30  0001 C CNN
F 3 "" H 950 1500 30  0000 C CNN
	1    950  1500
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:R-RESCUE-Breaker_v2.0 R3
U 1 1 5468F219
P 2200 1500
F 0 "R3" V 2280 1500 40  0000 C CNN
F 1 "33K" V 2207 1501 40  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2130 1500 30  0001 C CNN
F 3 "" H 2200 1500 30  0000 C CNN
	1    2200 1500
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:R-RESCUE-Breaker_v2.0 R4
U 1 1 5468F2CB
P 2200 3350
F 0 "R4" V 2280 3350 40  0000 C CNN
F 1 "100K" V 2207 3351 40  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2130 3350 30  0001 C CNN
F 3 "" H 2200 3350 30  0000 C CNN
	1    2200 3350
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:GND-RESCUE-Breaker_v2.0 #PWR03
U 1 1 5468F509
P 2200 3600
F 0 "#PWR03" H 2200 3600 30  0001 C CNN
F 1 "GND" H 2200 3530 30  0001 C CNN
F 2 "" H 2200 3600 60  0000 C CNN
F 3 "" H 2200 3600 60  0000 C CNN
	1    2200 3600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR04
U 1 1 5468F575
P 1300 1050
F 0 "#PWR04" H 1300 1150 30  0001 C CNN
F 1 "VCC" H 1300 1150 30  0000 C CNN
F 2 "" H 1300 1050 60  0000 C CNN
F 3 "" H 1300 1050 60  0000 C CNN
	1    1300 1050
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:IRF9540N-RESCUE-Breaker_v2.0 U2
U 1 1 5468FC5E
P 9050 1150
F 0 "U2" H 9060 1320 60  0000 R CNN
F 1 "irf9520" H 9060 1000 60  0000 R CNN
F 2 "w_mod_to:to220_std" H 9050 1150 60  0001 C CNN
F 3 "" H 9050 1150 60  0000 C CNN
	1    9050 1150
	0    1    -1   0   
$EndComp
Text GLabel 9900 1050 2    60   Input ~ 0
VCC_P
$Comp
L Breaker_v2.0-rescue:R-RESCUE-Breaker_v2.0 R7
U 1 1 5468FFCC
P 8600 1400
F 0 "R7" V 8680 1400 40  0000 C CNN
F 1 "1K" V 8607 1401 40  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 8530 1400 30  0001 C CNN
F 3 "" H 8600 1400 30  0000 C CNN
	1    8600 1400
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:CP2 C1
U 1 1 546903C8
P 2650 3350
F 0 "C1" H 2650 3450 40  0000 L CNN
F 1 "1uf" H 2656 3265 40  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 2688 3200 30  0001 C CNN
F 3 "" H 2650 3350 60  0000 C CNN
	1    2650 3350
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:GND-RESCUE-Breaker_v2.0 #PWR05
U 1 1 54690407
P 2650 3600
F 0 "#PWR05" H 2650 3600 30  0001 C CNN
F 1 "GND" H 2650 3530 30  0001 C CNN
F 2 "" H 2650 3600 60  0000 C CNN
F 3 "" H 2650 3600 60  0000 C CNN
	1    2650 3600
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:R-RESCUE-Breaker_v2.0 R9
U 1 1 546906EE
P 9600 1400
F 0 "R9" V 9680 1400 40  0000 C CNN
F 1 "1K" V 9607 1401 40  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 9530 1400 30  0001 C CNN
F 3 "" H 9600 1400 30  0000 C CNN
	1    9600 1400
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:LED-RESCUE-Breaker_v2.0 D2
U 1 1 5469072B
P 9600 2000
F 0 "D2" H 9600 2100 50  0000 C CNN
F 1 "LED" H 9600 1900 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 9600 2000 60  0001 C CNN
F 3 "" H 9600 2000 60  0000 C CNN
	1    9600 2000
	0    1    1    0   
$EndComp
$Comp
L Breaker_v2.0-rescue:GND-RESCUE-Breaker_v2.0 #PWR06
U 1 1 546907BB
P 9600 2300
F 0 "#PWR06" H 9600 2300 30  0001 C CNN
F 1 "GND" H 9600 2230 30  0001 C CNN
F 2 "" H 9600 2300 60  0000 C CNN
F 3 "" H 9600 2300 60  0000 C CNN
	1    9600 2300
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:R-RESCUE-Breaker_v2.0 R8
U 1 1 546A2980
P 2200 6050
F 0 "R8" V 2280 6050 40  0000 C CNN
F 1 "1M" V 2207 6051 40  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2130 6050 30  0001 C CNN
F 3 "" H 2200 6050 30  0000 C CNN
	1    2200 6050
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:GND-RESCUE-Breaker_v2.0 #PWR07
U 1 1 546A2986
P 2200 6300
F 0 "#PWR07" H 2200 6300 30  0001 C CNN
F 1 "GND" H 2200 6230 30  0001 C CNN
F 2 "" H 2200 6300 60  0000 C CNN
F 3 "" H 2200 6300 60  0000 C CNN
	1    2200 6300
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:CP2 C2
U 1 1 546A298D
P 2650 6000
F 0 "C2" H 2650 6100 40  0000 L CNN
F 1 "4.7uf" H 2656 5915 40  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 2688 5850 30  0001 C CNN
F 3 "" H 2650 6000 60  0000 C CNN
	1    2650 6000
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:GND-RESCUE-Breaker_v2.0 #PWR08
U 1 1 546A2993
P 2650 6300
F 0 "#PWR08" H 2650 6300 30  0001 C CNN
F 1 "GND" H 2650 6230 30  0001 C CNN
F 2 "" H 2650 6300 60  0000 C CNN
F 3 "" H 2650 6300 60  0000 C CNN
	1    2650 6300
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:BC849 Q1
U 1 1 546A2BDF
P 1700 5750
F 0 "Q1" H 1700 5600 50  0000 R CNN
F 1 "QBC849B" H 1700 5900 50  0000 R CNN
F 2 "Transistors_SMD:sot23" H 1700 5750 60  0001 C CNN
F 3 "" H 1700 5750 60  0000 C CNN
	1    1700 5750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2150 2550 2500 2550
Wire Wire Line
	7900 2150 7700 2150
Wire Wire Line
	2500 1750 2500 1950
Wire Wire Line
	2500 1950 2500 2150
Connection ~ 2500 2550
Connection ~ 2500 2150
Wire Wire Line
	1250 2650 1450 2650
Wire Wire Line
	950  1150 1300 1150
Wire Wire Line
	2200 1750 2200 2050
Wire Wire Line
	1300 1050 1300 1150
Connection ~ 1300 1150
Wire Wire Line
	2850 2750 2200 2750
Connection ~ 2200 2750
Wire Wire Line
	7900 1950 7700 1950
Wire Wire Line
	9000 1350 9000 1650
Wire Wire Line
	9000 2050 8600 2050
Wire Wire Line
	9250 1050 9600 1050
Wire Wire Line
	950  1150 950  1250
Wire Wire Line
	2200 1250 2200 1150
Connection ~ 2200 1150
Wire Wire Line
	2500 1150 2500 1250
Wire Wire Line
	8600 1150 8600 1050
Connection ~ 8600 1050
Wire Wire Line
	8600 1650 9000 1650
Connection ~ 9000 1650
Wire Wire Line
	2650 2950 2650 3150
Wire Wire Line
	2200 2950 2650 2950
Connection ~ 2200 2950
Wire Wire Line
	2650 3550 2650 3600
Wire Wire Line
	9600 2300 9600 2200
Wire Wire Line
	9600 1800 9600 1650
Wire Wire Line
	9600 1150 9600 1050
Connection ~ 9600 1050
Wire Wire Line
	8200 1050 8600 1050
Wire Wire Line
	2200 5650 2200 5800
Wire Wire Line
	2650 5650 2650 5800
Wire Wire Line
	2650 6200 2650 6300
Wire Wire Line
	1900 5650 2200 5650
Connection ~ 2200 5650
Text GLabel 4000 6100 0    60   Input ~ 0
CRST
Wire Wire Line
	4000 6100 4300 6100
Text GLabel 1700 6650 3    60   Input ~ 0
CRST
$Comp
L Breaker_v2.0-rescue:R-RESCUE-Breaker_v2.0 R6
U 1 1 546A351A
P 1700 6250
F 0 "R6" V 1780 6250 40  0000 C CNN
F 1 "1K" V 1707 6251 40  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1630 6250 30  0001 C CNN
F 3 "" H 1700 6250 30  0000 C CNN
	1    1700 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 5950 1700 6000
Wire Wire Line
	1700 6650 1700 6500
Wire Wire Line
	3700 2650 3700 2600
Wire Wire Line
	3700 2150 3700 2200
Wire Wire Line
	3700 2650 3550 2650
Wire Wire Line
	3700 2150 2500 2150
Connection ~ 9550 3750
Wire Wire Line
	9150 3750 9550 3750
Wire Wire Line
	8750 3150 9150 3150
Wire Wire Line
	10150 3150 10150 3250
Connection ~ 9150 3150
Wire Wire Line
	9150 3250 9150 3150
Wire Wire Line
	9800 3150 10150 3150
Wire Wire Line
	9550 3450 9550 3750
Text GLabel 8750 3150 0    60   Input ~ 0
V5
$Comp
L Breaker_v2.0-rescue:R-RESCUE-Breaker_v2.0 R11
U 1 1 546B5C87
P 10150 3500
F 0 "R11" V 10230 3500 40  0000 C CNN
F 1 "1K" V 10157 3501 40  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 10080 3500 30  0001 C CNN
F 3 "" H 10150 3500 30  0000 C CNN
	1    10150 3500
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:R-RESCUE-Breaker_v2.0 R10
U 1 1 546B5C81
P 9150 3500
F 0 "R10" V 9230 3500 40  0000 C CNN
F 1 "1K" V 9157 3501 40  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 9080 3500 30  0001 C CNN
F 3 "" H 9150 3500 30  0000 C CNN
	1    9150 3500
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:BSS138 U3
U 1 1 546B5C7A
P 9600 3250
F 0 "U3" H 9610 3420 60  0000 R CNN
F 1 "BSS84P" H 9610 3100 60  0000 R CNN
F 2 "Transistors_SMD:sot23" H 9600 3250 60  0001 C CNN
F 3 "" H 9600 3250 60  0000 C CNN
	1    9600 3250
	0    1    -1   0   
$EndComp
$Comp
L Breaker_v2.0-rescue:GND-RESCUE-Breaker_v2.0 #PWR09
U 1 1 546A4380
P 10150 3750
F 0 "#PWR09" H 10150 3750 30  0001 C CNN
F 1 "GND" H 10150 3680 30  0001 C CNN
F 2 "" H 10150 3750 60  0000 C CNN
F 3 "" H 10150 3750 60  0000 C CNN
	1    10150 3750
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:LM339 U1
U 4 1 546BBC62
P 8700 4350
F 0 "U1" H 8750 4550 60  0000 C CNN
F 1 "LM339" H 8800 4150 50  0000 C CNN
F 2 "SMD_Packages:SOIC-14_W" H 8700 4350 60  0001 C CNN
F 3 "" H 8700 4350 60  0000 C CNN
	4    8700 4350
	1    0    0    -1  
$EndComp
Connection ~ 2500 1950
Connection ~ 2200 2050
Wire Wire Line
	9550 4350 9050 4350
Wire Wire Line
	8100 4250 8350 4250
Wire Wire Line
	8100 4450 8350 4450
Text Label 8100 4450 0    60   ~ 0
LP
Text Label 8100 4250 0    60   ~ 0
LN
Text Label 2600 1950 0    60   ~ 0
LN
Text Label 2300 2050 0    60   ~ 0
LP
Wire Wire Line
	2600 1950 2500 1950
Wire Wire Line
	2300 2050 2200 2050
Text Label 7700 2150 0    60   ~ 0
LN
Text Label 7700 1950 0    60   ~ 0
LP
$Comp
L Breaker_v2.0-rescue:POT RV1
U 1 1 5475FE11
P 950 2450
F 0 "RV1" H 950 2350 50  0000 C CNN
F 1 "100K" V 950 2450 50  0000 C CNN
F 2 "w_pth_resistors:trimmer_ecp_ca9-v10" H 950 2450 60  0001 C CNN
F 3 "" H 950 2450 60  0000 C CNN
	1    950  2450
	0    1    1    0   
$EndComp
Wire Wire Line
	950  1750 950  2200
Wire Wire Line
	1100 2450 1250 2450
$Comp
L Breaker_v2.0-rescue:GND-RESCUE-Breaker_v2.0 #PWR010
U 1 1 547602C8
P 950 2850
F 0 "#PWR010" H 950 2850 30  0001 C CNN
F 1 "GND" H 950 2780 30  0001 C CNN
F 2 "" H 950 2850 60  0000 C CNN
F 3 "" H 950 2850 60  0000 C CNN
	1    950  2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  2700 950  2850
Wire Wire Line
	1250 2050 1250 2450
Connection ~ 1250 2450
Text Label 2650 2950 0    60   ~ 0
PReset
Text Label 1500 5650 2    60   ~ 0
PReset
$Comp
L Breaker_v2.0-rescue:R-RESCUE-Breaker_v2.0 R2
U 1 1 54761143
P 2200 5200
F 0 "R2" V 2280 5200 40  0000 C CNN
F 1 "1M" V 2207 5201 40  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2130 5200 30  0001 C CNN
F 3 "" H 2200 5200 30  0000 C CNN
	1    2200 5200
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:GND-RESCUE-Breaker_v2.0 #PWR011
U 1 1 54761149
P 2200 5450
F 0 "#PWR011" H 2200 5450 30  0001 C CNN
F 1 "GND" H 2200 5380 30  0001 C CNN
F 2 "" H 2200 5450 60  0000 C CNN
F 3 "" H 2200 5450 60  0000 C CNN
	1    2200 5450
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:CP2 C3
U 1 1 5476114F
P 2650 5150
F 0 "C3" H 2650 5250 40  0000 L CNN
F 1 "4.7uf" H 2656 5065 40  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 2688 5000 30  0001 C CNN
F 3 "" H 2650 5150 60  0000 C CNN
	1    2650 5150
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:GND-RESCUE-Breaker_v2.0 #PWR012
U 1 1 54761155
P 2650 5450
F 0 "#PWR012" H 2650 5450 30  0001 C CNN
F 1 "GND" H 2650 5380 30  0001 C CNN
F 2 "" H 2650 5450 60  0000 C CNN
F 3 "" H 2650 5450 60  0000 C CNN
	1    2650 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4800 2200 4950
Wire Wire Line
	2650 4800 2650 4950
Wire Wire Line
	2650 5350 2650 5450
Wire Wire Line
	1900 4800 2200 4800
Connection ~ 2200 4800
Text Label 700  4800 2    60   ~ 0
PReset
$Comp
L Breaker_v2.0-rescue:DPST SW1
U 1 1 54761208
P 1400 4450
F 0 "SW1" H 1550 4560 50  0000 C CNN
F 1 "SW_PUSH" H 1400 4370 50  0000 C CNN
F 2 "w_switch:PCB_PUSH" H 1400 4450 60  0001 C CNN
F 3 "" H 1400 4450 60  0000 C CNN
	1    1400 4450
	1    0    0    -1  
$EndComp
Text Label 1250 2650 0    60   ~ 0
VO
Text Label 1250 2050 0    60   ~ 0
VREF
Text Label 8200 1050 2    60   ~ 0
RSN
$Comp
L power:VCC #PWR013
U 1 1 5476272F
P 4600 950
F 0 "#PWR013" H 4600 1050 30  0001 C CNN
F 1 "VCC" H 4600 1050 30  0000 C CNN
F 2 "" H 4600 950 60  0000 C CNN
F 3 "" H 4600 950 60  0000 C CNN
	1    4600 950 
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:R-RESCUE-Breaker_v2.0 R12
U 1 1 54762753
P 5150 1000
F 0 "R12" V 5230 1000 40  0000 C CNN
F 1 "0.1" V 5157 1001 40  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5080 1000 30  0001 C CNN
F 3 "" H 5150 1000 30  0000 C CNN
	1    5150 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 950  4600 1000
Wire Wire Line
	4600 1000 4850 1000
Text Label 5750 1000 0    60   ~ 0
RSN
Wire Wire Line
	5400 1000 5450 1000
$Comp
L Breaker_v2.0-rescue:R-RESCUE-Breaker_v2.0 R13
U 1 1 54762B65
P 5150 3150
F 0 "R13" V 5230 3150 40  0000 C CNN
F 1 "3K" V 5157 3151 40  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5080 3150 30  0001 C CNN
F 3 "" H 5150 3150 30  0000 C CNN
	1    5150 3150
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:GND-RESCUE-Breaker_v2.0 #PWR014
U 1 1 54762BC2
P 5150 3400
F 0 "#PWR014" H 5150 3400 30  0001 C CNN
F 1 "GND" H 5150 3330 30  0001 C CNN
F 2 "" H 5150 3400 60  0000 C CNN
F 3 "" H 5150 3400 60  0000 C CNN
	1    5150 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1200 4850 1000
Connection ~ 4850 1000
Wire Wire Line
	5450 1200 5450 1000
Connection ~ 5450 1000
Wire Wire Line
	5150 2100 5150 2700
Text Label 4950 2700 2    60   ~ 0
VO
Wire Wire Line
	4950 2700 5150 2700
Connection ~ 5150 2700
$Comp
L Breaker_v2.0-rescue:R-RESCUE-Breaker_v2.0 R14
U 1 1 54763951
P 5500 2700
F 0 "R14" V 5580 2700 40  0000 C CNN
F 1 "100K" V 5507 2701 40  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5430 2700 30  0001 C CNN
F 3 "" H 5500 2700 30  0000 C CNN
	1    5500 2700
	0    1    1    0   
$EndComp
$Comp
L Breaker_v2.0-rescue:C-RESCUE-Breaker_v2.0 C4
U 1 1 54763A62
P 5850 3000
F 0 "C4" H 5850 3100 40  0000 L CNN
F 1 "100nf" H 5856 2915 40  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5888 2850 30  0001 C CNN
F 3 "" H 5850 3000 60  0000 C CNN
	1    5850 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2700 5850 2700
Wire Wire Line
	5850 2700 5850 2800
$Comp
L Breaker_v2.0-rescue:GND-RESCUE-Breaker_v2.0 #PWR015
U 1 1 54763B40
P 5850 3400
F 0 "#PWR015" H 5850 3400 30  0001 C CNN
F 1 "GND" H 5850 3330 30  0001 C CNN
F 2 "" H 5850 3400 60  0000 C CNN
F 3 "" H 5850 3400 60  0000 C CNN
	1    5850 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3200 5850 3400
Text GLabel 6150 2700 2    60   Input ~ 0
VF
Connection ~ 5850 2700
$Comp
L Breaker_v2.0-rescue:ZXCT1009 U4
U 1 1 54761F04
P 5150 1750
F 0 "U4" H 4800 1500 60  0000 C CNN
F 1 "ZXCT1009" H 5150 2000 60  0000 C CNN
F 2 "SMD_Packages:SOT-23" H 5150 1750 60  0001 C CNN
F 3 "" H 5150 1750 60  0000 C CNN
	1    5150 1750
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:CONN_01X02 P2
U 1 1 54762C3F
P 4500 6150
F 0 "P2" H 4500 6300 50  0000 C CNN
F 1 "CONN_01X02" V 4600 6150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 4500 6150 60  0001 C CNN
F 3 "" H 4500 6150 60  0000 C CNN
	1    4500 6150
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:CONN_01X02 P1
U 1 1 54762CB8
P 4500 5600
F 0 "P1" H 4500 5750 50  0000 C CNN
F 1 "CONN_01X02" V 4600 5600 50  0000 C CNN
F 2 "Connect-thru:1x2-SCREW-TERM_P200mil" H 4500 5600 60  0001 C CNN
F 3 "" H 4500 5600 60  0000 C CNN
	1    4500 5600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR016
U 1 1 54762DCF
P 4200 5450
F 0 "#PWR016" H 4200 5550 30  0001 C CNN
F 1 "VCC" H 4200 5550 30  0000 C CNN
F 2 "" H 4200 5450 60  0000 C CNN
F 3 "" H 4200 5450 60  0000 C CNN
	1    4200 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5550 4300 5550
Wire Wire Line
	4200 5550 4200 5450
$Comp
L Breaker_v2.0-rescue:GND-RESCUE-Breaker_v2.0 #PWR017
U 1 1 54762FC1
P 4200 5750
F 0 "#PWR017" H 4200 5750 30  0001 C CNN
F 1 "GND" H 4200 5680 30  0001 C CNN
F 2 "" H 4200 5750 60  0000 C CNN
F 3 "" H 4200 5750 60  0000 C CNN
	1    4200 5750
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v2.0-rescue:GND-RESCUE-Breaker_v2.0 #PWR018
U 1 1 5476300C
P 4200 6300
F 0 "#PWR018" H 4200 6300 30  0001 C CNN
F 1 "GND" H 4200 6230 30  0001 C CNN
F 2 "" H 4200 6300 60  0000 C CNN
F 3 "" H 4200 6300 60  0000 C CNN
	1    4200 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 6300 4200 6200
Wire Wire Line
	4200 6200 4300 6200
Wire Wire Line
	4300 5650 4200 5650
Wire Wire Line
	4200 5650 4200 5750
Text GLabel 10550 3150 2    60   Input ~ 0
ERR
Connection ~ 10150 3150
$Comp
L Breaker_v2.0-rescue:CONN_01X04 P3
U 1 1 5476382A
P 6300 5800
F 0 "P3" H 6300 6050 50  0000 C CNN
F 1 "CONN_01X04" V 6400 5800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 6300 5800 60  0001 C CNN
F 3 "" H 6300 5800 60  0000 C CNN
	1    6300 5800
	1    0    0    -1  
$EndComp
Text GLabel 5900 5600 0    60   Input ~ 0
V5
Text GLabel 5900 5750 0    60   Input ~ 0
ERR
Text GLabel 5900 5900 0    60   Input ~ 0
VF
$Comp
L Breaker_v2.0-rescue:GND-RESCUE-Breaker_v2.0 #PWR019
U 1 1 54763D2D
P 6050 6050
F 0 "#PWR019" H 6050 6050 30  0001 C CNN
F 1 "GND" H 6050 5980 30  0001 C CNN
F 2 "" H 6050 6050 60  0000 C CNN
F 3 "" H 6050 6050 60  0000 C CNN
	1    6050 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5950 6050 5950
Wire Wire Line
	6050 5950 6050 6050
Wire Wire Line
	5900 5900 6000 5900
Wire Wire Line
	6000 5900 6000 5850
Wire Wire Line
	6000 5850 6100 5850
Wire Wire Line
	6100 5750 5900 5750
Wire Wire Line
	6100 5650 6000 5650
Wire Wire Line
	6000 5650 6000 5600
Wire Wire Line
	6000 5600 5900 5600
Wire Wire Line
	1700 2900 1700 2850
Wire Wire Line
	1700 2250 1700 2200
Wire Wire Line
	1900 4250 1900 4650
Connection ~ 1900 4650
Wire Wire Line
	900  4250 900  4650
Wire Wire Line
	900  4800 700  4800
Connection ~ 900  4650
$Comp
L Breaker_v2.0-rescue:CONN_01X02 P4
U 1 1 54771D97
P 4350 4900
F 0 "P4" H 4350 5050 50  0000 C CNN
F 1 "CONN_01X02" V 4450 4900 50  0000 C CNN
F 2 "Connect-thru:1x2-SCREW-TERM_P200mil" H 4350 4900 60  0001 C CNN
F 3 "" H 4350 4900 60  0000 C CNN
	1    4350 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4850 4150 4850
$Comp
L Breaker_v2.0-rescue:GND-RESCUE-Breaker_v2.0 #PWR020
U 1 1 54771DA5
P 4050 5050
F 0 "#PWR020" H 4050 5050 30  0001 C CNN
F 1 "GND" H 4050 4980 30  0001 C CNN
F 2 "" H 4050 5050 60  0000 C CNN
F 3 "" H 4050 5050 60  0000 C CNN
	1    4050 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4950 4050 4950
Wire Wire Line
	4050 4950 4050 5050
Text GLabel 4050 4850 0    60   Input ~ 0
VCC_P
Text Notes 8550 2850 0    60   ~ 0
BSS84P Esta pintado como NMos, pero es un PMOS
Wire Wire Line
	2500 2550 2850 2550
Wire Wire Line
	2500 2150 2500 2250
Wire Wire Line
	2500 2150 2500 2550
Wire Wire Line
	1300 1150 2200 1150
Wire Wire Line
	2200 2750 2200 2950
Wire Wire Line
	2200 1150 2500 1150
Wire Wire Line
	8600 1050 8850 1050
Wire Wire Line
	9000 1650 9000 2050
Wire Wire Line
	2200 2950 2200 3100
Wire Wire Line
	9600 1050 9900 1050
Wire Wire Line
	2200 5650 2650 5650
Wire Wire Line
	9550 3750 9550 4350
Wire Wire Line
	9150 3150 9400 3150
Wire Wire Line
	2200 2050 2200 2750
Wire Wire Line
	1250 2450 1450 2450
Wire Wire Line
	2200 4800 2650 4800
Wire Wire Line
	4850 1000 4900 1000
Wire Wire Line
	5450 1000 5750 1000
Wire Wire Line
	5150 2700 5150 2900
Wire Wire Line
	5150 2700 5250 2700
Wire Wire Line
	5850 2700 6150 2700
Wire Wire Line
	10150 3150 10550 3150
Wire Wire Line
	1900 4650 1900 4800
Wire Wire Line
	900  4650 900  4800
$EndSCHEMATC
