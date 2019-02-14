EESchema Schematic File Version 4
LIBS:Breaker_v3.1-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1450 1250 0    50   Output ~ 0
reset
$Comp
L Breaker_v3.1-rescue:SW_Push_Dual-Switch SW2
U 1 1 5C3E8EB4
P 1950 1050
F 0 "SW2" H 1950 1335 50  0000 C CNN
F 1 "SW_Push_Dual" H 1950 1244 50  0000 C CNN
F 2 "Button_Switch_THT:SW_TH_Tactile_Omron_B3F-10xx" H 1950 1250 50  0001 C CNN
F 3 "" H 1950 1250 50  0001 C CNN
	1    1950 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1050 1750 1250
Wire Wire Line
	1450 1250 1750 1250
Connection ~ 1750 1250
Wire Wire Line
	2150 1050 2150 1250
$Comp
L Breaker_v3.1-rescue:R-Device R12
U 1 1 5C3E8F0C
P 2550 1500
F 0 "R12" H 2620 1546 50  0000 L CNN
F 1 "1M" H 2620 1455 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2480 1500 50  0001 C CNN
F 3 "~" H 2550 1500 50  0001 C CNN
	1    2550 1500
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v3.1-rescue:CP-Device C3
U 1 1 5C3E8F92
P 3000 1500
F 0 "C3" H 3118 1546 50  0000 L CNN
F 1 "4.7uf" H 3118 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3038 1350 50  0001 C CNN
F 3 "~" H 3000 1500 50  0001 C CNN
	1    3000 1500
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v3.1-rescue:GND-power #PWR02
U 1 1 5C3E8FD4
P 2550 1800
F 0 "#PWR02" H 2550 1550 50  0001 C CNN
F 1 "GND" H 2555 1627 50  0000 C CNN
F 2 "" H 2550 1800 50  0001 C CNN
F 3 "" H 2550 1800 50  0001 C CNN
	1    2550 1800
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v3.1-rescue:GND-power #PWR03
U 1 1 5C3E9006
P 3000 1800
F 0 "#PWR03" H 3000 1550 50  0001 C CNN
F 1 "GND" H 3005 1627 50  0000 C CNN
F 2 "" H 3000 1800 50  0001 C CNN
F 3 "" H 3000 1800 50  0001 C CNN
	1    3000 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1350 2550 1250
Wire Wire Line
	2550 1250 2150 1250
Connection ~ 2150 1250
Wire Wire Line
	2550 1250 3000 1250
Wire Wire Line
	3000 1250 3000 1350
Connection ~ 2550 1250
Wire Wire Line
	3000 1650 3000 1800
Wire Wire Line
	2550 1650 2550 1800
$EndSCHEMATC
