EESchema Schematic File Version 4
EELAYER 30 0
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
L Detectors:Murata5300 CT1
U 1 1 60DB9995
P 4500 3500
F 0 "CT1" H 4500 3881 50  0000 C CNN
F 1 "Murata5300" H 4500 3790 50  0000 C CNN
F 2 "Detector_SMD_AD:Murata53000" H 4500 3500 50  0001 C CNN
F 3 "~" H 4500 3500 50  0001 C CNN
	1    4500 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 60DBB404
P 3700 2850
F 0 "J1" V 3664 2930 50  0000 L CNN
F 1 "Conn_01x02" V 3573 2930 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 3700 2850 50  0001 C CNN
F 3 "~" H 3700 2850 50  0001 C CNN
	1    3700 2850
	0    1    -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 60DBC723
P 3600 4150
F 0 "J2" V 3472 3962 50  0000 R CNN
F 1 "Conn_01x02" V 3563 3962 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 3600 4150 50  0001 C CNN
F 3 "~" H 3600 4150 50  0001 C CNN
	1    3600 4150
	0    -1   1    0   
$EndComp
Wire Wire Line
	3700 3950 3700 3700
Wire Wire Line
	3700 3700 4100 3700
Wire Wire Line
	4100 3300 3700 3300
Wire Wire Line
	3700 3300 3700 3050
Wire Wire Line
	3600 3050 3600 3950
$Comp
L Diode:1N4148W D1
U 1 1 60DBDC3F
P 5300 3300
F 0 "D1" H 5300 3083 50  0000 C CNN
F 1 "1N4148W" H 5300 3174 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 5300 3125 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 5300 3300 50  0001 C CNN
	1    5300 3300
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 60DBE407
P 5750 3500
F 0 "C1" H 5865 3546 50  0000 L CNN
F 1 "0.1u" H 5865 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5788 3350 50  0001 C CNN
F 3 "~" H 5750 3500 50  0001 C CNN
	1    5750 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3300 5150 3300
Wire Wire Line
	5450 3300 5750 3300
Wire Wire Line
	5750 3300 5750 3350
Wire Wire Line
	5750 3650 5750 3700
Wire Wire Line
	5750 3700 5300 3700
$Comp
L power:GND #PWR0101
U 1 1 60DC65B6
P 5300 3800
F 0 "#PWR0101" H 5300 3550 50  0001 C CNN
F 1 "GND" H 5305 3627 50  0000 C CNN
F 2 "" H 5300 3800 50  0001 C CNN
F 3 "" H 5300 3800 50  0001 C CNN
	1    5300 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3800 5300 3700
Connection ~ 5300 3700
Wire Wire Line
	5300 3700 4900 3700
$Comp
L Device:R R2
U 1 1 60DC7465
P 6300 3300
F 0 "R2" V 6093 3300 50  0000 C CNN
F 1 "1K" V 6184 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6230 3300 50  0001 C CNN
F 3 "~" H 6300 3300 50  0001 C CNN
	1    6300 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 3300 5750 3300
Connection ~ 5750 3300
$Comp
L Transistor_BJT:BC849 Q2
U 1 1 60DC8C6A
P 6850 3300
F 0 "Q2" H 7041 3346 50  0000 L CNN
F 1 "BC849" H 7041 3255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7050 3225 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 6850 3300 50  0001 L CNN
	1    6850 3300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC849 Q3
U 1 1 60DC9FB4
P 7500 2850
F 0 "Q3" H 7691 2896 50  0000 L CNN
F 1 "BC849" H 7691 2805 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7700 2775 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 7500 2850 50  0001 L CNN
	1    7500 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 60DCBB30
P 7600 3800
F 0 "#PWR0102" H 7600 3550 50  0001 C CNN
F 1 "GND" H 7605 3627 50  0000 C CNN
F 2 "" H 7600 3800 50  0001 C CNN
F 3 "" H 7600 3800 50  0001 C CNN
	1    7600 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3700 7600 3800
Wire Wire Line
	6650 3300 6550 3300
Wire Wire Line
	6550 3300 6550 3000
Wire Wire Line
	6550 3000 6950 3000
Wire Wire Line
	6950 3000 6950 3100
Connection ~ 6550 3300
Wire Wire Line
	6550 3300 6450 3300
Wire Wire Line
	6950 2850 6950 3000
Wire Wire Line
	6950 2850 7300 2850
Connection ~ 6950 3000
Wire Wire Line
	6950 3500 6950 3700
Wire Wire Line
	7600 3050 7600 3700
$Comp
L power:+5V #PWR0103
U 1 1 60DD4E50
P 6500 4850
F 0 "#PWR0103" H 6500 4700 50  0001 C CNN
F 1 "+5V" H 6515 5023 50  0000 C CNN
F 2 "" H 6500 4850 50  0001 C CNN
F 3 "" H 6500 4850 50  0001 C CNN
	1    6500 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 60DD5560
P 6500 5550
F 0 "R3" H 6570 5596 50  0000 L CNN
F 1 "10K" H 6570 5505 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6430 5550 50  0001 C CNN
F 3 "~" H 6500 5550 50  0001 C CNN
	1    6500 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5700 6500 5750
Wire Wire Line
	6500 4900 6500 4850
Wire Wire Line
	7600 2500 7600 2650
Text Label 8450 2500 0    50   ~ 0
A_Out
$Comp
L Transistor_BJT:BC807 Q1
U 1 1 60DD8BD2
P 6400 5100
F 0 "Q1" H 6591 5054 50  0000 L CNN
F 1 "BC807" H 6591 5145 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6600 5025 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC808-D.pdf" H 6400 5100 50  0001 L CNN
	1    6400 5100
	1    0    0    1   
$EndComp
$Comp
L Device:C C2
U 1 1 60DD9C03
P 8100 3300
F 0 "C2" H 8215 3346 50  0000 L CNN
F 1 "0.1u" H 8215 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 8138 3150 50  0001 C CNN
F 3 "~" H 8100 3300 50  0001 C CNN
	1    8100 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 3450 8100 3700
Wire Wire Line
	8100 3700 7600 3700
Connection ~ 7600 3700
Wire Wire Line
	6950 3700 7600 3700
Wire Wire Line
	8100 3150 8100 2500
Wire Wire Line
	7600 2500 8100 2500
Connection ~ 8100 2500
Wire Wire Line
	8100 2500 8450 2500
Wire Wire Line
	6500 5400 6500 5350
Wire Wire Line
	6500 5350 6950 5350
Connection ~ 6500 5350
Wire Wire Line
	6500 5350 6500 5300
Text Label 5550 5100 2    50   ~ 0
A_Out
Text Label 6950 5350 0    50   ~ 0
D_Out
$Comp
L power:GND #PWR0104
U 1 1 60DE809E
P 6500 5750
F 0 "#PWR0104" H 6500 5500 50  0001 C CNN
F 1 "GND" H 6505 5577 50  0000 C CNN
F 2 "" H 6500 5750 50  0001 C CNN
F 3 "" H 6500 5750 50  0001 C CNN
	1    6500 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 60DE8734
P 5950 5100
F 0 "R1" V 5743 5100 50  0000 C CNN
F 1 "1K" V 5834 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5880 5100 50  0001 C CNN
F 3 "~" H 5950 5100 50  0001 C CNN
	1    5950 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 5100 6200 5100
Wire Wire Line
	5800 5100 5550 5100
$Comp
L Device:R R4
U 1 1 60DF0EA0
P 8100 2150
F 0 "R4" H 8170 2196 50  0000 L CNN
F 1 "10K" H 8170 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 8030 2150 50  0001 C CNN
F 3 "~" H 8100 2150 50  0001 C CNN
	1    8100 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2300 8100 2500
$Comp
L power:+5V #PWR0105
U 1 1 60DF44E8
P 8100 1850
F 0 "#PWR0105" H 8100 1700 50  0001 C CNN
F 1 "+5V" H 8115 2023 50  0000 C CNN
F 2 "" H 8100 1850 50  0001 C CNN
F 3 "" H 8100 1850 50  0001 C CNN
	1    8100 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1850 8100 2000
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 60DF87A1
P 10150 4850
F 0 "J3" H 10230 4842 50  0000 L CNN
F 1 "Conn_01x04" H 10230 4751 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 10150 4850 50  0001 C CNN
F 3 "~" H 10150 4850 50  0001 C CNN
	1    10150 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 60DFAF81
P 9700 4500
F 0 "#PWR0106" H 9700 4350 50  0001 C CNN
F 1 "+5V" H 9715 4673 50  0000 C CNN
F 2 "" H 9700 4500 50  0001 C CNN
F 3 "" H 9700 4500 50  0001 C CNN
	1    9700 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 60DFBAF5
P 9700 5150
F 0 "#PWR0107" H 9700 4900 50  0001 C CNN
F 1 "GND" H 9705 4977 50  0000 C CNN
F 2 "" H 9700 5150 50  0001 C CNN
F 3 "" H 9700 5150 50  0001 C CNN
	1    9700 5150
	1    0    0    -1  
$EndComp
Text Label 9850 4850 2    50   ~ 0
D_Out
Text Label 9850 4950 2    50   ~ 0
A_Out
Wire Wire Line
	9700 4500 9700 4750
Wire Wire Line
	9700 4750 9950 4750
Wire Wire Line
	9950 4850 9850 4850
Wire Wire Line
	9950 4950 9850 4950
Wire Wire Line
	9700 5150 9700 5050
Wire Wire Line
	9700 5050 9950 5050
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60E03497
P 9950 4750
F 0 "#FLG0101" H 9950 4825 50  0001 C CNN
F 1 "PWR_FLAG" H 9950 4923 50  0000 C CNN
F 2 "" H 9950 4750 50  0001 C CNN
F 3 "~" H 9950 4750 50  0001 C CNN
	1    9950 4750
	1    0    0    -1  
$EndComp
Connection ~ 9950 4750
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 60E0B291
P 9950 5050
F 0 "#FLG0102" H 9950 5125 50  0001 C CNN
F 1 "PWR_FLAG" H 9950 5223 50  0000 C CNN
F 2 "" H 9950 5050 50  0001 C CNN
F 3 "~" H 9950 5050 50  0001 C CNN
	1    9950 5050
	-1   0    0    1   
$EndComp
Connection ~ 9950 5050
Text Label 3600 3700 1    50   ~ 0
DCC_J
Text Label 3800 3300 0    50   ~ 0
DCC_K_1
Text Label 3800 3700 0    50   ~ 0
DCC_K_2
$Comp
L Mechanical:MountingHole H1
U 1 1 60E26E42
P 1250 6100
F 0 "H1" H 1350 6191 50  0000 L CNN
F 1 "MountingHole" H 1350 6100 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1350 6009 50  0000 L CNN
F 3 "~" H 1250 6100 50  0001 C CNN
	1    1250 6100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60E276C9
P 1250 6400
F 0 "H2" H 1350 6491 50  0000 L CNN
F 1 "MountingHole" H 1350 6400 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1350 6309 50  0000 L CNN
F 3 "~" H 1250 6400 50  0001 C CNN
	1    1250 6400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 60E27852
P 1250 6700
F 0 "H3" H 1350 6791 50  0000 L CNN
F 1 "MountingHole" H 1350 6700 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1350 6609 50  0000 L CNN
F 3 "~" H 1250 6700 50  0001 C CNN
	1    1250 6700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
