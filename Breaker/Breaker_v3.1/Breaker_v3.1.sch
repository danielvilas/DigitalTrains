EESchema Schematic File Version 4
LIBS:Breaker_v3.1-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 7
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
L Breaker_v3.1-rescue:Screw_Terminal_01x02-Connector J1
U 1 1 5C3E0CA6
P 1200 950
F 0 "J1" H 1280 942 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 1280 851 50  0000 L CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00012_1x02_P5.00mm_Horizontal" H 1200 950 50  0001 C CNN
F 3 "~" H 1200 950 50  0001 C CNN
	1    1200 950 
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v3.1-rescue:VCC-power #PWR0101
U 1 1 5C3E0D0E
P 850 900
F 0 "#PWR0101" H 850 750 50  0001 C CNN
F 1 "VCC" H 867 1073 50  0000 C CNN
F 2 "" H 850 900 50  0001 C CNN
F 3 "" H 850 900 50  0001 C CNN
	1    850  900 
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v3.1-rescue:GND-power #PWR0102
U 1 1 5C3E0E2F
P 850 1100
F 0 "#PWR0102" H 850 850 50  0001 C CNN
F 1 "GND" H 855 927 50  0000 C CNN
F 2 "" H 850 1100 50  0001 C CNN
F 3 "" H 850 1100 50  0001 C CNN
	1    850  1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  900  850  950 
Wire Wire Line
	850  950  1000 950 
Wire Wire Line
	850  1100 850  1050
Wire Wire Line
	850  1050 1000 1050
$Sheet
S 2400 1750 800  500 
U 5C3E0EAB
F0 "Sense" 50
F1 "Sense_v3.1.sch" 50
F2 "Vin" I L 2400 1850 50 
F3 "Vout" O R 3200 1850 50 
F4 "Vsense" O R 3200 2000 50 
F5 "Vmean" O R 3200 2100 50 
$EndSheet
$Comp
L Breaker_v3.1-rescue:VCC-power #PWR0103
U 1 1 5C3E0F07
P 2150 1800
F 0 "#PWR0103" H 2150 1650 50  0001 C CNN
F 1 "VCC" H 2167 1973 50  0000 C CNN
F 2 "" H 2150 1800 50  0001 C CNN
F 3 "" H 2150 1800 50  0001 C CNN
	1    2150 1800
	1    0    0    -1  
$EndComp
$Sheet
S 5600 1700 800  500 
U 5C3E0F17
F0 "Power Control" 50
F1 "PW_Ctrl_v3.1.sch" 50
F2 "Vin" I L 5600 1800 50 
F3 "Vout" O R 6400 1800 50 
F4 "status" I L 5600 2000 50 
F5 "ctrl_ref" I L 5600 2100 50 
$EndSheet
Wire Wire Line
	2150 1800 2150 1850
Wire Wire Line
	2150 1850 2400 1850
Wire Wire Line
	3200 1850 5350 1850
Wire Wire Line
	5350 1850 5350 1800
Wire Wire Line
	5350 1800 5600 1800
$Comp
L Breaker_v3.1-rescue:Screw_Terminal_01x02-Connector J2
U 1 1 5C3E1033
P 8100 1800
F 0 "J2" H 8180 1792 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 8180 1701 50  0000 L CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00012_1x02_P5.00mm_Horizontal" H 8100 1800 50  0001 C CNN
F 3 "~" H 8100 1800 50  0001 C CNN
	1    8100 1800
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v3.1-rescue:GND-power #PWR0104
U 1 1 5C3E103F
P 7750 1950
F 0 "#PWR0104" H 7750 1700 50  0001 C CNN
F 1 "GND" H 7755 1777 50  0000 C CNN
F 2 "" H 7750 1950 50  0001 C CNN
F 3 "" H 7750 1950 50  0001 C CNN
	1    7750 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 1950 7750 1900
Wire Wire Line
	7750 1900 7900 1900
Wire Wire Line
	6400 1800 7250 1800
$Comp
L Breaker_v3.1-rescue:GND-power #PWR0105
U 1 1 5C3E1592
P 8250 2950
F 0 "#PWR0105" H 8250 2700 50  0001 C CNN
F 1 "GND" H 8255 2777 50  0000 C CNN
F 2 "" H 8250 2950 50  0001 C CNN
F 3 "" H 8250 2950 50  0001 C CNN
	1    8250 2950
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v3.1-rescue:GND-power #PWR0106
U 1 1 5C3E15C1
P 7250 2950
F 0 "#PWR0106" H 7250 2700 50  0001 C CNN
F 1 "GND" H 7255 2777 50  0000 C CNN
F 2 "" H 7250 2950 50  0001 C CNN
F 3 "" H 7250 2950 50  0001 C CNN
	1    7250 2950
	1    0    0    -1  
$EndComp
$Comp
L Breaker_v3.1-rescue:LED-Device D1
U 1 1 5C3E165F
P 7250 2650
F 0 "D1" V 7288 2533 50  0000 R CNN
F 1 "Green" V 7197 2533 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7250 2650 50  0001 C CNN
F 3 "~" H 7250 2650 50  0001 C CNN
	1    7250 2650
	0    -1   -1   0   
$EndComp
$Comp
L Breaker_v3.1-rescue:R-Device R1
U 1 1 5C3E178A
P 7250 2200
F 0 "R1" H 7320 2246 50  0000 L CNN
F 1 "1K" H 7320 2155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7180 2200 50  0001 C CNN
F 3 "~" H 7250 2200 50  0001 C CNN
	1    7250 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 2050 7250 1800
Connection ~ 7250 1800
Wire Wire Line
	7250 1800 7550 1800
Wire Wire Line
	7250 2350 7250 2500
$Comp
L Breaker_v3.1-rescue:SW_Push_Dual-Switch SW1
U 1 1 5C3E1B8A
P 7900 2700
F 0 "SW1" H 7900 2985 50  0000 C CNN
F 1 "test" H 7900 2894 50  0000 C CNN
F 2 "Button_Switch_THT:SW_TH_Tactile_Omron_B3F-10xx" H 7900 2900 50  0001 C CNN
F 3 "" H 7900 2900 50  0001 C CNN
	1    7900 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 1800 7550 2600
Wire Wire Line
	7550 2600 7700 2600
Wire Wire Line
	7700 2600 7700 2700
Connection ~ 7550 1800
Wire Wire Line
	7550 1800 7900 1800
Wire Wire Line
	7700 2900 7700 2700
Connection ~ 7700 2700
Wire Wire Line
	8100 2700 8100 2900
Wire Wire Line
	8250 2950 8250 2900
Wire Wire Line
	8250 2900 8100 2900
Connection ~ 8100 2900
$Sheet
S 3850 2100 800  500 
U 5C3E46FB
F0 "Control Module" 50
F1 "Control_v3.1.sch" 50
F2 "Vsense" I L 3850 2200 50 
F3 "status" O R 4650 2200 50 
F4 "ctrl_ref" O R 4650 2300 50 
F5 "reset" I L 3850 2350 50 
$EndSheet
Wire Wire Line
	4650 2200 5350 2200
Wire Wire Line
	5350 2200 5350 2000
Wire Wire Line
	5600 2100 5450 2100
Wire Wire Line
	5450 2100 5450 2300
Wire Wire Line
	5450 2300 4650 2300
Wire Wire Line
	5350 2000 5600 2000
Wire Wire Line
	3200 2000 3550 2000
Wire Wire Line
	3550 2000 3550 2200
Wire Wire Line
	3550 2200 3850 2200
$Sheet
S 5650 3400 800  500 
U 5C3E5DF6
F0 "Error Interface" 50
F1 "ErrorIface_v3.1.sch" 50
F2 "status" I L 5650 3600 50 
F3 "ctrl_ref" I L 5650 3700 50 
F4 "ext_5v" I R 6450 3550 50 
F5 "ext_err" O R 6450 3650 50 
$EndSheet
Wire Wire Line
	5350 3600 5350 2200
Connection ~ 5350 2200
Wire Wire Line
	5450 2300 5450 3700
Wire Wire Line
	5450 3700 5650 3700
Connection ~ 5450 2300
Wire Wire Line
	5650 3600 5350 3600
$Sheet
S 2400 2750 800  500 
U 5C3E8D5D
F0 "On Board Trigger" 50
F1 "onBoardTrigger_v3.1.sch" 50
F2 "reset" O R 3200 2850 50 
$EndSheet
$Sheet
S 2400 3600 800  500 
U 5C3E9304
F0 "External Trigger" 50
F1 "extTrigger_v3.1.sch" 50
F2 "reset" O R 3200 3750 50 
F3 "ext_reset" I R 3200 3950 50 
$EndSheet
Wire Wire Line
	3200 2850 3550 2850
Wire Wire Line
	3550 2850 3550 2350
Wire Wire Line
	3550 2350 3850 2350
Wire Wire Line
	3200 3750 3550 3750
Wire Wire Line
	3550 3750 3550 2850
Connection ~ 3550 2850
$Comp
L Breaker_v3.1-rescue:Conn_01x05-Connector_Generic J3
U 1 1 5C3EA81B
P 7400 4300
F 0 "J3" H 7480 4342 50  0000 L CNN
F 1 "Conn_01x05" H 7480 4251 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 7400 4300 50  0001 C CNN
F 3 "~" H 7400 4300 50  0001 C CNN
	1    7400 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3650 6850 3650
Wire Wire Line
	6850 3650 6850 4200
Wire Wire Line
	6850 4200 7200 4200
Wire Wire Line
	7200 4300 3550 4300
Wire Wire Line
	3550 4300 3550 3950
Wire Wire Line
	3550 3950 3200 3950
Text Label 3400 2300 0    50   ~ 0
Vmean
Text Label 6950 4100 0    50   ~ 0
Vmean
$Comp
L Breaker_v3.1-rescue:GND-power #PWR01
U 1 1 5C3EC541
P 7100 4600
F 0 "#PWR01" H 7100 4350 50  0001 C CNN
F 1 "GND" H 7105 4427 50  0000 C CNN
F 2 "" H 7100 4600 50  0001 C CNN
F 3 "" H 7100 4600 50  0001 C CNN
	1    7100 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4100 7200 4100
Wire Wire Line
	7200 4500 7100 4500
Wire Wire Line
	7100 4500 7100 4600
Wire Wire Line
	3200 2100 3400 2100
Wire Wire Line
	3400 2100 3400 2300
Text Label 6550 3550 0    50   ~ 0
ext_v5
Text Label 6950 4200 0    50   ~ 0
ext_err
Text Label 6850 4300 0    50   ~ 0
ext_reset
Wire Wire Line
	7250 2950 7250 2800
Wire Wire Line
	6450 3550 6550 3550
Text Label 6950 4400 0    50   ~ 0
ext_v5
Wire Wire Line
	7200 4400 6950 4400
$EndSCHEMATC
