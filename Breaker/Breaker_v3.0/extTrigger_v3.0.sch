EESchema Schematic File Version 4
LIBS:Breaker_v3.0-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1600 1450 0    50   Output ~ 0
reset
Wire Wire Line
	1600 1450 1900 1450
$Comp
L Breaker_v3.0-rescue:R-Device R?
U 1 1 5C3E937B
P 2700 1700
AR Path="/5C3E8D5D/5C3E937B" Ref="R?"  Part="1" 
AR Path="/5C3E9304/5C3E937B" Ref="R14"  Part="1" 
AR Path="/5C3E937B" Ref="R14"  Part="1" 
F 0 "R14" H 2770 1746 50  0000 L CNN
F 1 "1M" H 2770 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2630 1700 50  0001 C CNN
F 3 "~" H 2700 1700 50  0001 C CNN
	1    2700 1700
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v3.0-rescue:CP-Device C?
U 1 1 5C3E9382
P 3150 1700
AR Path="/5C3E8D5D/5C3E9382" Ref="C?"  Part="1" 
AR Path="/5C3E9304/5C3E9382" Ref="C4"  Part="1" 
F 0 "C4" H 3268 1746 50  0000 L CNN
F 1 "4.7uf" H 3268 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3188 1550 50  0001 C CNN
F 3 "~" H 3150 1700 50  0001 C CNN
	1    3150 1700
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v3.0-rescue:GND-power #PWR?
U 1 1 5C3E9389
P 2700 2000
AR Path="/5C3E8D5D/5C3E9389" Ref="#PWR?"  Part="1" 
AR Path="/5C3E9304/5C3E9389" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 2700 1750 50  0001 C CNN
F 1 "GND" H 2705 1827 50  0000 C CNN
F 2 "" H 2700 2000 50  0001 C CNN
F 3 "" H 2700 2000 50  0001 C CNN
	1    2700 2000
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v3.0-rescue:GND-power #PWR?
U 1 1 5C3E938F
P 3150 2000
AR Path="/5C3E8D5D/5C3E938F" Ref="#PWR?"  Part="1" 
AR Path="/5C3E9304/5C3E938F" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 3150 1750 50  0001 C CNN
F 1 "GND" H 3155 1827 50  0000 C CNN
F 2 "" H 3150 2000 50  0001 C CNN
F 3 "" H 3150 2000 50  0001 C CNN
	1    3150 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1550 2700 1450
Wire Wire Line
	2700 1450 2300 1450
Wire Wire Line
	2700 1450 3150 1450
Wire Wire Line
	3150 1450 3150 1550
Connection ~ 2700 1450
Wire Wire Line
	3150 1850 3150 2000
Wire Wire Line
	2700 1850 2700 2000
$Comp
L Breaker_v3.0-rescue:BC849-Transistor_BJT Q3
U 1 1 5C3E94F2
P 2100 1550
F 0 "Q3" V 2428 1550 50  0000 C CNN
F 1 "BC849" V 2337 1550 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2300 1475 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 2100 1550 50  0001 L CNN
	1    2100 1550
	0    -1   -1   0   
$EndComp
Text HLabel 1550 2300 0    50   Input ~ 0
ext_reset
$Comp
L Breaker_v3.0-rescue:R-Device R13
U 1 1 5C3E957E
P 2100 2050
F 0 "R13" H 2170 2096 50  0000 L CNN
F 1 "1K" H 2170 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2030 2050 50  0001 C CNN
F 3 "~" H 2100 2050 50  0001 C CNN
	1    2100 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2300 2100 2300
Wire Wire Line
	2100 2300 2100 2200
Wire Wire Line
	2100 1900 2100 1750
$EndSCHEMATC
