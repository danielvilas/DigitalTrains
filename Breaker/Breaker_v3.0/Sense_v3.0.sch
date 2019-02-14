EESchema Schematic File Version 4
LIBS:Breaker_v3.0-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1800 1400 0    50   Input ~ 0
Vin
Text HLabel 3900 1400 2    50   Output ~ 0
Vout
Text HLabel 3900 2150 2    50   Output ~ 0
Vsense
Text HLabel 3900 2400 2    50   Output ~ 0
Vmean
$Comp
L Breaker_v3.0-rescue:R-Device R2
U 1 1 5C3E242B
P 2900 1400
F 0 "R2" V 2693 1400 50  0000 C CNN
F 1 "0.1" V 2784 1400 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2830 1400 50  0001 C CNN
F 3 "~" H 2900 1400 50  0001 C CNN
	1    2900 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 1400 3200 1400
Wire Wire Line
	2750 1400 2600 1400
$Comp
L Breaker_v3.0-rescue:ZXCT1009F-Amplifier_Current U?
U 1 1 5C3E24B4
P 2900 1900
AR Path="/5C3E24B4" Ref="U?"  Part="1" 
AR Path="/5C3E0EAB/5C3E24B4" Ref="U1"  Part="1" 
F 0 "U1" H 3180 1946 50  0000 L CNN
F 1 "ZXCT1009F" H 3180 1855 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2900 1900 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ZXCT1009.pdf" H 2850 1900 50  0001 C CNN
	1    2900 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1700 3100 1500
Wire Wire Line
	3100 1500 3200 1500
Wire Wire Line
	3200 1500 3200 1400
Wire Wire Line
	2700 1700 2700 1500
Wire Wire Line
	2700 1500 2600 1500
Wire Wire Line
	2600 1500 2600 1400
Connection ~ 2600 1400
Wire Wire Line
	2600 1400 1800 1400
$Comp
L Breaker_v3.0-rescue:GND-power #PWR0107
U 1 1 5C3E2691
P 2900 2900
F 0 "#PWR0107" H 2900 2650 50  0001 C CNN
F 1 "GND" H 2905 2727 50  0000 C CNN
F 2 "" H 2900 2900 50  0001 C CNN
F 3 "" H 2900 2900 50  0001 C CNN
	1    2900 2900
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v3.0-rescue:R-Device R3
U 1 1 5C3E26F7
P 2900 2650
F 0 "R3" H 2970 2696 50  0000 L CNN
F 1 "3K" H 2970 2605 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2830 2650 50  0001 C CNN
F 3 "~" H 2900 2650 50  0001 C CNN
	1    2900 2650
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v3.0-rescue:R-Device R4
U 1 1 5C3E2760
P 3250 2400
F 0 "R4" V 3043 2400 50  0000 C CNN
F 1 "100K" V 3134 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3180 2400 50  0001 C CNN
F 3 "~" H 3250 2400 50  0001 C CNN
	1    3250 2400
	0    1    1    0   
$EndComp
$Comp
L Breaker_v3.0-rescue:C-Device C?
U 1 1 5C3E28B1
P 3600 2650
AR Path="/5C3E28B1" Ref="C?"  Part="1" 
AR Path="/5C3E0EAB/5C3E28B1" Ref="C1"  Part="1" 
F 0 "C1" H 3715 2696 50  0000 L CNN
F 1 "100nf" H 3715 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3638 2500 50  0001 C CNN
F 3 "~" H 3600 2650 50  0001 C CNN
	1    3600 2650
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v3.0-rescue:GND-power #PWR0108
U 1 1 5C3E2910
P 3600 2950
F 0 "#PWR0108" H 3600 2700 50  0001 C CNN
F 1 "GND" H 3605 2777 50  0000 C CNN
F 2 "" H 3600 2950 50  0001 C CNN
F 3 "" H 3600 2950 50  0001 C CNN
	1    3600 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2100 2900 2150
Wire Wire Line
	2900 2800 2900 2900
Wire Wire Line
	3100 2400 2900 2400
Connection ~ 2900 2400
Wire Wire Line
	2900 2400 2900 2500
Wire Wire Line
	3400 2400 3600 2400
Wire Wire Line
	3600 2400 3600 2500
Wire Wire Line
	3600 2800 3600 2950
Connection ~ 2900 2150
Wire Wire Line
	2900 2150 2900 2400
Wire Wire Line
	3600 2400 3900 2400
Connection ~ 3600 2400
Wire Wire Line
	2900 2150 3900 2150
Wire Wire Line
	3900 1400 3200 1400
Connection ~ 3200 1400
$EndSCHEMATC
