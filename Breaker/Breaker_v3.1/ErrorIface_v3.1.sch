EESchema Schematic File Version 4
LIBS:Breaker_v3.1-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1350 1350 0    50   Input ~ 0
status
Text HLabel 1350 1550 0    50   Input ~ 0
ctrl_ref
Text HLabel 2500 900  0    50   Input ~ 0
ext_5v
Text HLabel 3500 900  2    50   Output ~ 0
ext_err
$Comp
L Comparator:LM339 U2
U 4 1 5C3E5E4C
P 1900 1450
F 0 "U2" H 1900 1817 50  0000 C CNN
F 1 "LM339" H 1900 1726 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 1850 1550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 1950 1650 50  0001 C CNN
	4    1900 1450
	1    0    0    -1  
$EndComp
Text Notes 1050 2200 0    50   ~ 0
Status(vcc)>ctrl_ref:\n    System OK, Current blocked, Gate = Source, ext_err= gnd\nStatus(gnd)<ctrl_ref:\n    Error, current flows, Gate = 0, ext_err = ext_5v
Wire Wire Line
	1600 1350 1350 1350
Wire Wire Line
	1350 1550 1600 1550
$Comp
L Transistor_FET:BSS84 Q2
U 1 1 5C3E6099
P 2950 1000
F 0 "Q2" V 3293 1000 50  0000 C CNN
F 1 "BSS84" V 3202 1000 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3150 925 50  0001 L CIN
F 3 "http://assets.nexperia.com/documents/data-sheet/BSS84.pdf" H 2950 1000 50  0001 L CNN
	1    2950 1000
	0    1    -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 5C3E61AD
P 2650 1100
F 0 "R10" H 2720 1146 50  0000 L CNN
F 1 "1K" H 2720 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2580 1100 50  0001 C CNN
F 3 "~" H 2650 1100 50  0001 C CNN
	1    2650 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 900  2650 900 
Wire Wire Line
	2650 950  2650 900 
Connection ~ 2650 900 
Wire Wire Line
	2650 900  2750 900 
Wire Wire Line
	2950 1200 2950 1300
Wire Wire Line
	2950 1450 2200 1450
Wire Wire Line
	2650 1250 2650 1300
Wire Wire Line
	2650 1300 2950 1300
Connection ~ 2950 1300
Wire Wire Line
	2950 1300 2950 1450
$Comp
L Device:R R11
U 1 1 5C3E6317
P 3350 1150
F 0 "R11" H 3420 1196 50  0000 L CNN
F 1 "1K" H 3420 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3280 1150 50  0001 C CNN
F 3 "~" H 3350 1150 50  0001 C CNN
	1    3350 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5C3E6365
P 3350 1400
F 0 "#PWR0115" H 3350 1150 50  0001 C CNN
F 1 "GND" H 3355 1227 50  0000 C CNN
F 2 "" H 3350 1400 50  0001 C CNN
F 3 "" H 3350 1400 50  0001 C CNN
	1    3350 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 900  3350 900 
Wire Wire Line
	3350 1000 3350 900 
Connection ~ 3350 900 
Wire Wire Line
	3350 900  3500 900 
Wire Wire Line
	3350 1400 3350 1300
$EndSCHEMATC
