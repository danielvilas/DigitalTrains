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
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5788 3350 50  0001 C CNN
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
F 2 "Resistor_SMD:R_0805_2012Metric" V 6230 3300 50  0001 C CNN
F 3 "~" H 6300 3300 50  0001 C CNN
	1    6300 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 3300 5750 3300
Connection ~ 5750 3300
Wire Wire Line
	6950 2950 6950 3100
Text Label 7800 2950 0    50   ~ 0
Free_Out
$Comp
L Device:R R4
U 1 1 60DF0EA0
P 6950 2600
F 0 "R4" H 7020 2646 50  0000 L CNN
F 1 "10K" H 7020 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6880 2600 50  0001 C CNN
F 3 "~" H 6950 2600 50  0001 C CNN
	1    6950 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2750 6950 2950
$Comp
L power:+5V #PWR0105
U 1 1 60DF44E8
P 6950 2300
F 0 "#PWR0105" H 6950 2150 50  0001 C CNN
F 1 "+5V" H 6965 2473 50  0000 C CNN
F 2 "" H 6950 2300 50  0001 C CNN
F 3 "" H 6950 2300 50  0001 C CNN
	1    6950 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2300 6950 2450
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 60DF87A1
P 10150 4850
F 0 "J3" H 10230 4842 50  0000 L CNN
F 1 "Conn_01x03" H 10230 4751 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 10150 4850 50  0001 C CNN
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
P 9600 5050
F 0 "#PWR0107" H 9600 4800 50  0001 C CNN
F 1 "GND" H 9605 4877 50  0000 C CNN
F 2 "" H 9600 5050 50  0001 C CNN
F 3 "" H 9600 5050 50  0001 C CNN
	1    9600 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 4500 9700 4750
Wire Wire Line
	9700 4750 9950 4750
Wire Wire Line
	9950 4850 9850 4850
Wire Wire Line
	9950 4950 9850 4950
Wire Wire Line
	9600 5050 9600 4950
Wire Wire Line
	9600 4950 9850 4950
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
P 9850 4950
F 0 "#FLG0102" H 9850 5025 50  0001 C CNN
F 1 "PWR_FLAG" H 9850 5123 50  0000 C CNN
F 2 "" H 9850 4950 50  0001 C CNN
F 3 "~" H 9850 4950 50  0001 C CNN
	1    9850 4950
	-1   0    0    1   
$EndComp
Connection ~ 9850 4950
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
$Comp
L Transistor_BJT:BC849 Q3
U 1 1 60DC9FB4
P 6850 3300
F 0 "Q3" H 7041 3346 50  0000 L CNN
F 1 "BC849" H 7041 3255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7050 3225 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 6850 3300 50  0001 L CNN
	1    6850 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3300 6650 3300
Wire Wire Line
	6950 3500 6950 3700
Wire Wire Line
	6950 3700 5750 3700
Connection ~ 5750 3700
Connection ~ 6950 2950
Wire Wire Line
	6950 2950 7800 2950
$Comp
L Device:L_Core_Iron CT1
U 1 1 610513C3
P 4900 3500
F 0 "CT1" H 4856 3454 50  0000 R CNN
F 1 "56050C" H 4856 3545 50  0000 R CNN
F 2 "Detector_SMD_AD:Murata5600" H 4900 3500 50  0001 C CNN
F 3 "~" H 4900 3500 50  0001 C CNN
	1    4900 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 3700 4900 3650
Wire Wire Line
	4900 3350 4900 3300
Text Label 9850 4850 2    50   ~ 0
Free_Out
$Comp
L Connector_Generic:Conn_01x01 J1
U 1 1 6105E0B7
P 4450 3300
F 0 "J1" H 4368 3075 50  0000 C CNN
F 1 "Conn_01x01" H 4368 3166 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_1x2mm" H 4450 3300 50  0001 C CNN
F 3 "~" H 4450 3300 50  0001 C CNN
	1    4450 3300
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 6105EA5E
P 4450 3700
F 0 "J2" H 4368 3475 50  0000 C CNN
F 1 "Conn_01x01" H 4368 3566 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_1x2mm" H 4450 3700 50  0001 C CNN
F 3 "~" H 4450 3700 50  0001 C CNN
	1    4450 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4650 3300 4900 3300
Connection ~ 4900 3300
Wire Wire Line
	4650 3700 4900 3700
Connection ~ 4900 3700
$EndSCHEMATC