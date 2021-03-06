EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title "Arduino DCC++"
Date "2020-04-16"
Rev "v0.0.1c"
Comp "Daniel Vilas"
Comment1 "C3 Near USB"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1300 1700 0    50   Input ~ 0
D-
Text HLabel 1300 2000 0    50   Input ~ 0
D+
Text HLabel 6400 1300 2    50   Output ~ 0
TX
Text HLabel 6350 1600 2    50   Output ~ 0
RX
Text HLabel 6350 1750 2    50   Output ~ 0
RST
$Comp
L Interface_USB:FT231XS U2
U 1 1 5E948C80
P 3950 2200
F 0 "U2" H 3950 3281 50  0000 C CNN
F 1 "FT231XS" H 3950 3190 50  0000 C CNN
F 2 "Package_SO:SSOP-20_3.9x8.7mm_P0.635mm" H 4950 1400 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT231X.pdf" H 3950 2200 50  0001 C CNN
	1    3950 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5E94A94E
P 2500 1700
F 0 "R3" V 2293 1700 50  0000 C CNN
F 1 "27R" V 2384 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2430 1700 50  0001 C CNN
F 3 "~" H 2500 1700 50  0001 C CNN
	1    2500 1700
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5E94AC9B
P 2500 2000
F 0 "R4" V 2293 2000 50  0000 C CNN
F 1 "27R" V 2384 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2430 2000 50  0001 C CNN
F 3 "~" H 2500 2000 50  0001 C CNN
	1    2500 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 1700 1600 1700
Wire Wire Line
	2650 1700 3250 1700
Wire Wire Line
	3250 1700 3250 1900
Wire Wire Line
	3250 2000 2650 2000
Wire Wire Line
	2350 2000 2050 2000
$Comp
L Device:C C4
U 1 1 5E94BDA2
P 1600 2350
F 0 "C4" H 1715 2396 50  0000 L CNN
F 1 "47pF" H 1715 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1638 2200 50  0001 C CNN
F 3 "~" H 1600 2350 50  0001 C CNN
	1    1600 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5E94C41B
P 2050 2350
F 0 "C6" H 2165 2396 50  0000 L CNN
F 1 "47pF" H 2165 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2088 2200 50  0001 C CNN
F 3 "~" H 2050 2350 50  0001 C CNN
	1    2050 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5E94C8B6
P 1950 3700
F 0 "C5" H 2065 3746 50  0000 L CNN
F 1 "100nF" H 2065 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1988 3550 50  0001 C CNN
F 3 "~" H 1950 3700 50  0001 C CNN
	1    1950 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5E94CBF8
P 1100 3400
F 0 "C3" H 1215 3446 50  0000 L CNN
F 1 "10nF" H 1215 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1138 3250 50  0001 C CNN
F 3 "~" H 1100 3400 50  0001 C CNN
	1    1100 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5E94D864
P 3050 2750
F 0 "C8" H 3165 2796 50  0000 L CNN
F 1 "100nF" H 3165 2705 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3088 2600 50  0001 C CNN
F 3 "~" H 3050 2750 50  0001 C CNN
	1    3050 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5E94F004
P 3050 3200
F 0 "#PWR019" H 3050 2950 50  0001 C CNN
F 1 "GND" H 3055 3027 50  0000 C CNN
F 2 "" H 3050 3200 50  0001 C CNN
F 3 "" H 3050 3200 50  0001 C CNN
	1    3050 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5E94F696
P 2200 4050
F 0 "#PWR018" H 2200 3800 50  0001 C CNN
F 1 "GND" H 2205 3877 50  0000 C CNN
F 2 "" H 2200 4050 50  0001 C CNN
F 3 "" H 2200 4050 50  0001 C CNN
	1    2200 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5E94FB64
P 1850 2650
F 0 "#PWR016" H 1850 2400 50  0001 C CNN
F 1 "GND" H 1855 2477 50  0000 C CNN
F 2 "" H 1850 2650 50  0001 C CNN
F 3 "" H 1850 2650 50  0001 C CNN
	1    1850 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5E94FEAB
P 1100 3750
F 0 "#PWR015" H 1100 3500 50  0001 C CNN
F 1 "GND" H 1105 3577 50  0000 C CNN
F 2 "" H 1100 3750 50  0001 C CNN
F 3 "" H 1100 3750 50  0001 C CNN
	1    1100 3750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR014
U 1 1 5E9505EC
P 1100 2950
F 0 "#PWR014" H 1100 2800 50  0001 C CNN
F 1 "+5V" H 1115 3123 50  0000 C CNN
F 2 "" H 1100 2950 50  0001 C CNN
F 3 "" H 1100 2950 50  0001 C CNN
	1    1100 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 5E950D36
P 3850 1100
F 0 "#PWR020" H 3850 950 50  0001 C CNN
F 1 "+5V" H 3865 1273 50  0000 C CNN
F 2 "" H 3850 1100 50  0001 C CNN
F 3 "" H 3850 1100 50  0001 C CNN
	1    3850 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2200 1600 1700
Connection ~ 1600 1700
Wire Wire Line
	1600 1700 2350 1700
Wire Wire Line
	2050 2200 2050 2000
Connection ~ 2050 2000
Wire Wire Line
	2050 2000 1300 2000
Wire Wire Line
	1600 2500 1600 2600
Wire Wire Line
	1600 2600 1850 2600
Wire Wire Line
	1850 2600 1850 2650
Wire Wire Line
	2050 2500 2050 2600
Wire Wire Line
	2050 2600 1850 2600
Connection ~ 1850 2600
$Comp
L power:+5V #PWR017
U 1 1 5E951C74
P 2200 3350
F 0 "#PWR017" H 2200 3200 50  0001 C CNN
F 1 "+5V" H 2215 3523 50  0000 C CNN
F 2 "" H 2200 3350 50  0001 C CNN
F 3 "" H 2200 3350 50  0001 C CNN
	1    2200 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3350 2200 3450
Wire Wire Line
	2200 3450 2450 3450
Wire Wire Line
	2450 3450 2450 3550
Wire Wire Line
	2450 3850 2450 3950
Wire Wire Line
	2450 3950 2200 3950
Wire Wire Line
	2200 3950 2200 4050
Wire Wire Line
	1950 3850 1950 3950
Wire Wire Line
	1950 3950 2200 3950
Connection ~ 2200 3950
Wire Wire Line
	1950 3550 1950 3450
Wire Wire Line
	1950 3450 2200 3450
Connection ~ 2200 3450
Wire Wire Line
	4050 3100 4050 3200
Wire Wire Line
	4050 3200 3850 3200
Connection ~ 3050 3200
Wire Wire Line
	3850 3100 3850 3200
Connection ~ 3850 3200
Wire Wire Line
	3850 3200 3050 3200
Wire Wire Line
	3250 1600 3050 1600
Wire Wire Line
	3050 1600 3050 2200
Wire Wire Line
	3050 2900 3050 3200
Wire Wire Line
	3250 2200 3050 2200
Connection ~ 3050 2200
Wire Wire Line
	3050 2200 3050 2600
Wire Wire Line
	3050 1600 3050 800 
Wire Wire Line
	3050 800  4050 800 
Wire Wire Line
	4050 800  4050 1300
Connection ~ 3050 1600
Wire Wire Line
	3850 1300 3850 1100
Wire Wire Line
	1100 3750 1100 3550
Wire Wire Line
	1100 3250 1100 2950
$Comp
L Device:CP C7
U 1 1 5E94E3C6
P 2450 3700
F 0 "C7" H 2568 3746 50  0000 L CNN
F 1 "4.7uf" H 2568 3655 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.3" H 2488 3550 50  0001 C CNN
F 3 "~" H 2450 3700 50  0001 C CNN
	1    2450 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5E95A209
P 5850 2000
F 0 "C9" V 5598 2000 50  0000 C CNN
F 1 "100nF" V 5689 2000 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5888 1850 50  0001 C CNN
F 3 "~" H 5850 2000 50  0001 C CNN
	1    5850 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 1750 6200 2000
Wire Wire Line
	6350 1600 6000 1600
Wire Wire Line
	5400 1600 5400 1700
Wire Wire Line
	5400 1700 4650 1700
Wire Wire Line
	5250 1300 5700 1300
Wire Wire Line
	6000 2000 6200 2000
Wire Wire Line
	4650 2000 5700 2000
Wire Wire Line
	6350 1750 6200 1750
$Comp
L power:+5V #PWR021
U 1 1 5E95AE01
P 6250 2400
F 0 "#PWR021" H 6250 2250 50  0001 C CNN
F 1 "+5V" H 6265 2573 50  0000 C CNN
F 2 "" H 6250 2400 50  0001 C CNN
F 3 "" H 6250 2400 50  0001 C CNN
	1    6250 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5E95E4C4
P 5950 2750
F 0 "R8" V 5743 2750 50  0000 C CNN
F 1 "1K" V 5834 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5880 2750 50  0001 C CNN
F 3 "~" H 5950 2750 50  0001 C CNN
	1    5950 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5E95E9AB
P 5950 2450
F 0 "R7" V 5743 2450 50  0000 C CNN
F 1 "1K" V 5834 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5880 2450 50  0001 C CNN
F 3 "~" H 5950 2450 50  0001 C CNN
	1    5950 2450
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5E95F4EB
P 5500 2450
F 0 "D2" H 5493 2666 50  0000 C CNN
F 1 "TX_LED_Y" H 5493 2575 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5500 2450 50  0001 C CNN
F 3 "~" H 5500 2450 50  0001 C CNN
	1    5500 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5E95FDD9
P 5500 2750
F 0 "D3" H 5493 2966 50  0000 C CNN
F 1 "RX_LED_Y" H 5493 2875 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5500 2750 50  0001 C CNN
F 3 "~" H 5500 2750 50  0001 C CNN
	1    5500 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2400 6250 2450
Wire Wire Line
	6250 2450 6100 2450
Wire Wire Line
	6100 2750 6250 2750
Wire Wire Line
	6250 2750 6250 2450
Connection ~ 6250 2450
Wire Wire Line
	5800 2450 5650 2450
Wire Wire Line
	5800 2750 5650 2750
Wire Wire Line
	5350 2450 4950 2450
Wire Wire Line
	4950 2450 4950 2600
Wire Wire Line
	4950 2600 4650 2600
Wire Wire Line
	4650 2700 4950 2700
Wire Wire Line
	4950 2700 4950 2750
Wire Wire Line
	4950 2750 5350 2750
$Comp
L Device:R R5
U 1 1 5E96CD9C
P 5850 1300
F 0 "R5" V 5643 1300 50  0000 C CNN
F 1 "1K" V 5734 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5780 1300 50  0001 C CNN
F 3 "~" H 5850 1300 50  0001 C CNN
	1    5850 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 1300 6400 1300
$Comp
L Device:R R6
U 1 1 5E96D1EE
P 5850 1600
F 0 "R6" V 5643 1600 50  0000 C CNN
F 1 "1K" V 5734 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5780 1600 50  0001 C CNN
F 3 "~" H 5850 1600 50  0001 C CNN
	1    5850 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 1600 5400 1600
Wire Wire Line
	4650 1600 5250 1600
Wire Wire Line
	5250 1300 5250 1600
$EndSCHEMATC
