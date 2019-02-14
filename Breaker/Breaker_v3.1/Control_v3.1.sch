EESchema Schematic File Version 4
LIBS:Breaker_v3.1-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2400 2950 0    50   Input ~ 0
Vsense
Text HLabel 4750 2050 2    50   Output ~ 0
status
Text HLabel 4350 4200 2    50   Output ~ 0
ctrl_ref
$Comp
L Breaker_v3.1-rescue:R-Device R6
U 1 1 5C3E62CC
P 1750 3750
F 0 "R6" H 1820 3796 50  0000 L CNN
F 1 "33K" H 1820 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1680 3750 50  0001 C CNN
F 3 "~" H 1750 3750 50  0001 C CNN
	1    1750 3750
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v3.1-rescue:R-Device R7
U 1 1 5C3E6319
P 3800 1800
F 0 "R7" H 3870 1846 50  0000 L CNN
F 1 "470" H 3870 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3730 1800 50  0001 C CNN
F 3 "~" H 3800 1800 50  0001 C CNN
	1    3800 1800
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v3.1-rescue:R-Device R8
U 1 1 5C3E6378
P 3800 4000
F 0 "R8" H 3870 4046 50  0000 L CNN
F 1 "33K" H 3870 3955 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3730 4000 50  0001 C CNN
F 3 "~" H 3800 4000 50  0001 C CNN
	1    3800 4000
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v3.1-rescue:R-Device R9
U 1 1 5C3E63CC
P 3800 4650
F 0 "R9" H 3870 4696 50  0000 L CNN
F 1 "100K" H 3870 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3730 4650 50  0001 C CNN
F 3 "~" H 3800 4650 50  0001 C CNN
	1    3800 4650
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v3.1-rescue:R_POT-Device RV1
U 1 1 5C3E64DD
P 1750 4350
F 0 "RV1" H 1680 4396 50  0000 R CNN
F 1 "100K" H 1680 4305 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical_Hole" H 1750 4350 50  0001 C CNN
F 3 "~" H 1750 4350 50  0001 C CNN
	1    1750 4350
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v3.1-rescue:GND-power #PWR0109
U 1 1 5C3E6531
P 1750 4850
F 0 "#PWR0109" H 1750 4600 50  0001 C CNN
F 1 "GND" H 1755 4677 50  0000 C CNN
F 2 "" H 1750 4850 50  0001 C CNN
F 3 "" H 1750 4850 50  0001 C CNN
	1    1750 4850
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v3.1-rescue:GND-power #PWR0110
U 1 1 5C3E6569
P 3800 5100
F 0 "#PWR0110" H 3800 4850 50  0001 C CNN
F 1 "GND" H 3805 4927 50  0000 C CNN
F 2 "" H 3800 5100 50  0001 C CNN
F 3 "" H 3800 5100 50  0001 C CNN
	1    3800 5100
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v3.1-rescue:VCC-power #PWR0111
U 1 1 5C3E65A8
P 1750 3400
F 0 "#PWR0111" H 1750 3250 50  0001 C CNN
F 1 "VCC" H 1767 3573 50  0000 C CNN
F 2 "" H 1750 3400 50  0001 C CNN
F 3 "" H 1750 3400 50  0001 C CNN
	1    1750 3400
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v3.1-rescue:VCC-power #PWR0112
U 1 1 5C3E65E0
P 3800 3600
F 0 "#PWR0112" H 3800 3450 50  0001 C CNN
F 1 "VCC" H 3817 3773 50  0000 C CNN
F 2 "" H 3800 3600 50  0001 C CNN
F 3 "" H 3800 3600 50  0001 C CNN
	1    3800 3600
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v3.1-rescue:VCC-power #PWR0113
U 1 1 5C3E6618
P 3800 1500
F 0 "#PWR0113" H 3800 1350 50  0001 C CNN
F 1 "VCC" H 3817 1673 50  0000 C CNN
F 2 "" H 3800 1500 50  0001 C CNN
F 3 "" H 3800 1500 50  0001 C CNN
	1    3800 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 3400 1750 3600
Wire Wire Line
	1750 3900 1750 4200
Wire Wire Line
	1750 4500 1750 4850
Text Label 2200 4350 0    50   ~ 0
cut_ref
Wire Wire Line
	1900 4350 2200 4350
Wire Wire Line
	3800 3600 3800 3850
Wire Wire Line
	3800 4150 3800 4200
Wire Wire Line
	3800 4800 3800 5100
Wire Wire Line
	4350 4200 4200 4200
Connection ~ 3800 4200
Wire Wire Line
	3800 4200 3800 4400
$Comp
L Breaker_v3.1-rescue:CP-Device C?
U 1 1 5C3E6ACB
P 4250 4650
AR Path="/5C3E6ACB" Ref="C?"  Part="1" 
AR Path="/5C3E46FB/5C3E6ACB" Ref="C2"  Part="1" 
F 0 "C2" H 4368 4696 50  0000 L CNN
F 1 "1nf" H 4368 4605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4288 4500 50  0001 C CNN
F 3 "~" H 4250 4650 50  0001 C CNN
	1    4250 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4500 4250 4400
Wire Wire Line
	4250 4400 3800 4400
Connection ~ 3800 4400
Wire Wire Line
	3800 4400 3800 4500
$Comp
L Breaker_v3.1-rescue:GND-power #PWR0114
U 1 1 5C3E6BA8
P 4250 5100
F 0 "#PWR0114" H 4250 4850 50  0001 C CNN
F 1 "GND" H 4255 4927 50  0000 C CNN
F 2 "" H 4250 5100 50  0001 C CNN
F 3 "" H 4250 5100 50  0001 C CNN
	1    4250 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 5100 4250 4800
$Comp
L Breaker_v3.1-rescue:LM339-Comparator U2
U 1 1 5C3E6DD8
P 2850 2850
F 0 "U2" H 2850 3217 50  0000 C CNN
F 1 "LM339" H 2850 3126 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2800 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 2900 3050 50  0001 C CNN
	1    2850 2850
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v3.1-rescue:LM339-Comparator U2
U 2 1 5C3E6E63
P 4400 2950
F 0 "U2" H 4400 3317 50  0000 C CNN
F 1 "LM339" H 4400 3226 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4350 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 4450 3150 50  0001 C CNN
	2    4400 2950
	1    0    0    -1  
$EndComp
Text Label 4350 4100 0    50   ~ 0
ctrl_ref
Wire Wire Line
	4350 4100 4200 4100
Wire Wire Line
	4200 4100 4200 4200
Connection ~ 4200 4200
Wire Wire Line
	4200 4200 3800 4200
Text Label 2400 2750 2    50   ~ 0
cut_ref
Wire Wire Line
	2400 2750 2550 2750
Wire Wire Line
	2400 2950 2550 2950
$Comp
L Breaker_v3.1-rescue:LED-Device D2
U 1 1 5C3E7526
P 5000 2450
F 0 "D2" V 5038 2333 50  0000 R CNN
F 1 "Red" V 4947 2333 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5000 2450 50  0001 C CNN
F 3 "~" H 5000 2450 50  0001 C CNN
	1    5000 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 2850 3800 2850
Wire Wire Line
	3800 1950 3800 2250
Connection ~ 3800 2850
Wire Wire Line
	3800 2850 4100 2850
Wire Wire Line
	5000 2250 4600 2250
Connection ~ 3800 2250
Wire Wire Line
	3800 2250 3800 2850
Wire Wire Line
	4700 2950 5000 2950
Wire Wire Line
	5000 2950 5000 2600
Text Label 3800 3050 2    50   ~ 0
ctrl_ref
Wire Wire Line
	3800 3050 4100 3050
Wire Wire Line
	4750 2050 4600 2050
Wire Wire Line
	4600 2050 4600 2250
Connection ~ 4600 2250
Wire Wire Line
	4600 2250 3800 2250
Wire Wire Line
	3800 1500 3800 1650
Text Notes 5450 3700 0    50   ~ 0
Status: VCC if Ok\n        GND if Err\ncrtl_ref: 75% of VCC on normal\n        GND on reset
Wire Wire Line
	5000 2300 5000 2250
Text HLabel 4350 4300 2    50   Input ~ 0
reset
Wire Wire Line
	4350 4300 4200 4300
Wire Wire Line
	4200 4300 4200 4200
$Comp
L Breaker_v3.1-rescue:LM339-Comparator U2
U 5 1 5C3EFB16
P 6850 1850
F 0 "U2" H 6808 1896 50  0000 L CNN
F 1 "LM339" H 6808 1805 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6800 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 6900 2050 50  0001 C CNN
	5    6850 1850
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v3.1-rescue:VCC-power #PWR0116
U 1 1 5C3EFB54
P 6750 1450
F 0 "#PWR0116" H 6750 1300 50  0001 C CNN
F 1 "VCC" H 6767 1623 50  0000 C CNN
F 2 "" H 6750 1450 50  0001 C CNN
F 3 "" H 6750 1450 50  0001 C CNN
	1    6750 1450
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v3.1-rescue:GND-power #PWR0117
U 1 1 5C3EFB73
P 6750 2250
F 0 "#PWR0117" H 6750 2000 50  0001 C CNN
F 1 "GND" H 6755 2077 50  0000 C CNN
F 2 "" H 6750 2250 50  0001 C CNN
F 3 "" H 6750 2250 50  0001 C CNN
	1    6750 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1550 6750 1450
Wire Wire Line
	6750 2250 6750 2150
$EndSCHEMATC
