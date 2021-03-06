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
L Connector:Screw_Terminal_01x02 J1
U 1 1 5F3D25AC
P 1200 3250
F 0 "J1" H 1118 2925 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1118 3016 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1200 3250 50  0001 C CNN
F 3 "~" H 1200 3250 50  0001 C CNN
	1    1200 3250
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D1
U 1 1 5F3D373F
P 2250 1400
F 0 "D1" V 2296 1320 50  0000 R CNN
F 1 "1N4148" V 2205 1320 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2250 1225 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2250 1400 50  0001 C CNN
	1    2250 1400
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D3
U 1 1 5F3D413D
P 2750 1400
F 0 "D3" V 2796 1320 50  0000 R CNN
F 1 "1N4148" V 2705 1320 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2750 1225 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2750 1400 50  0001 C CNN
	1    2750 1400
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D4
U 1 1 5F3D49C7
P 2750 1800
F 0 "D4" V 2796 1720 50  0000 R CNN
F 1 "1N4148" V 2705 1720 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2750 1625 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2750 1800 50  0001 C CNN
	1    2750 1800
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D2
U 1 1 5F3D4E5C
P 2250 1800
F 0 "D2" V 2296 1720 50  0000 R CNN
F 1 "1N4148" V 2205 1720 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2250 1625 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2250 1800 50  0001 C CNN
	1    2250 1800
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:BC560 Q1
U 1 1 5F3D5BD2
P 3750 1550
F 0 "Q1" H 3941 1596 50  0000 L CNN
F 1 "BC560" H 3941 1505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3950 1475 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 3750 1550 50  0001 L CNN
	1    3750 1550
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5F3D6F9F
P 3200 2050
F 0 "R1" V 2993 2050 50  0000 C CNN
F 1 "100" V 3084 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3130 2050 50  0001 C CNN
F 3 "~" H 3200 2050 50  0001 C CNN
	1    3200 2050
	0    1    1    0   
$EndComp
$Comp
L Device:Jumper_NC_Small JP1
U 1 1 5F3D7AE8
P 1850 2400
F 0 "JP1" V 1804 2474 50  0000 L CNN
F 1 "Jumper_NC_Small" V 1895 2474 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 1850 2400 50  0001 C CNN
F 3 "~" H 1850 2400 50  0001 C CNN
	1    1850 2400
	0    1    1    0   
$EndComp
$Comp
L Device:Jumper_NC_Small JP2
U 1 1 5F3D8691
P 2650 2400
F 0 "JP2" V 2604 2474 50  0000 L CNN
F 1 "Jumper_NC_Small" V 2695 2474 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 2650 2400 50  0001 C CNN
F 3 "~" H 2650 2400 50  0001 C CNN
	1    2650 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 1550 2250 1600
Wire Wire Line
	2750 1550 2750 1600
Wire Wire Line
	2250 1950 2250 2050
Wire Wire Line
	2750 2050 2750 1950
Wire Wire Line
	2250 1250 2250 1150
Wire Wire Line
	2750 1150 2750 1250
Connection ~ 2750 2050
Wire Wire Line
	2650 2300 2650 1600
Wire Wire Line
	2650 1600 2750 1600
Connection ~ 2750 1600
Wire Wire Line
	2750 1600 2750 1650
Wire Wire Line
	1850 2300 1850 1600
Wire Wire Line
	1850 1600 2250 1600
Connection ~ 2250 1600
Wire Wire Line
	2250 1600 2250 1650
Wire Wire Line
	1850 2500 1850 3150
Wire Wire Line
	1850 3150 1400 3150
Wire Wire Line
	1400 3250 2650 3250
Wire Wire Line
	2650 3250 2650 2500
Wire Wire Line
	3650 1150 2750 1150
Wire Wire Line
	3650 1150 3650 1350
Wire Wire Line
	3650 2050 3650 1750
Wire Wire Line
	3350 2050 3650 2050
Wire Wire Line
	2750 2050 3050 2050
Wire Wire Line
	2250 2050 2750 2050
Wire Wire Line
	2250 1150 2750 1150
Connection ~ 2750 1150
$Comp
L Device:R R2
U 1 1 5F3F8A47
P 3400 3150
F 0 "R2" V 3193 3150 50  0000 C CNN
F 1 "3k9" V 3284 3150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3330 3150 50  0001 C CNN
F 3 "~" H 3400 3150 50  0001 C CNN
	1    3400 3150
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D5
U 1 1 5F3F9098
P 3600 3350
F 0 "D5" V 3554 3430 50  0000 L CNN
F 1 "1N4148" V 3645 3430 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3600 3175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3600 3350 50  0001 C CNN
	1    3600 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 3150 1850 3150
Connection ~ 1850 3150
Wire Wire Line
	2650 3250 2650 3550
Wire Wire Line
	2650 3550 3600 3550
Wire Wire Line
	3600 3550 3600 3500
Connection ~ 2650 3250
Wire Wire Line
	3550 3150 3600 3150
Wire Wire Line
	3600 3150 3600 3200
$Comp
L Isolator:PC817 U2
U 1 1 5F401D30
P 4700 1450
F 0 "U2" H 4700 1133 50  0000 C CNN
F 1 "PC817" H 4700 1224 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 4500 1250 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 4700 1450 50  0001 L CNN
	1    4700 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 1550 3950 1550
Wire Wire Line
	4400 1350 3650 1350
Connection ~ 3650 1350
$Comp
L Isolator:6N137 U1
U 1 1 5F406B36
P 4350 3250
F 0 "U1" H 4350 3717 50  0000 C CNN
F 1 "6N137" H 4350 3626 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4350 2750 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-0940EN" H 3500 3800 50  0001 C CNN
	1    4350 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3250 3850 3250
Wire Wire Line
	3850 3250 3850 3150
Wire Wire Line
	3850 3150 3600 3150
Connection ~ 3600 3150
Wire Wire Line
	3600 3550 3850 3550
Wire Wire Line
	3850 3550 3850 3450
Wire Wire Line
	3850 3450 4050 3450
Connection ~ 3600 3550
$Comp
L power:GND #PWR03
U 1 1 5F410189
P 5150 1250
F 0 "#PWR03" H 5150 1000 50  0001 C CNN
F 1 "GND" H 5155 1077 50  0000 C CNN
F 2 "" H 5150 1250 50  0001 C CNN
F 3 "" H 5150 1250 50  0001 C CNN
	1    5150 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5F412C06
P 4900 3500
F 0 "#PWR02" H 4900 3250 50  0001 C CNN
F 1 "GND" H 4905 3327 50  0000 C CNN
F 2 "" H 4900 3500 50  0001 C CNN
F 3 "" H 4900 3500 50  0001 C CNN
	1    4900 3500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5F41374C
P 4700 2700
F 0 "#PWR01" H 4700 2550 50  0001 C CNN
F 1 "VCC" H 4715 2873 50  0000 C CNN
F 2 "" H 4700 2700 50  0001 C CNN
F 3 "" H 4700 2700 50  0001 C CNN
	1    4700 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3050 4700 3050
$Comp
L Device:R R4
U 1 1 5F415B12
P 5300 2950
F 0 "R4" H 5230 2904 50  0000 R CNN
F 1 "10k" H 5230 2995 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5230 2950 50  0001 C CNN
F 3 "~" H 5300 2950 50  0001 C CNN
	1    5300 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	4650 3150 5300 3150
Wire Wire Line
	5000 1350 5150 1350
Wire Wire Line
	5150 1350 5150 1250
$Comp
L Device:R R3
U 1 1 5F41C394
P 5300 1550
F 0 "R3" V 5093 1550 50  0000 C CNN
F 1 "1K" V 5184 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5230 1550 50  0001 C CNN
F 3 "~" H 5300 1550 50  0001 C CNN
	1    5300 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 1550 5000 1550
Text Label 5800 1550 0    50   ~ 0
ack
Wire Wire Line
	5800 1550 5450 1550
$Comp
L Device:R R5
U 1 1 5F41FB7B
P 5600 2950
F 0 "R5" H 5530 2904 50  0000 R CNN
F 1 "10k" H 5530 2995 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5530 2950 50  0001 C CNN
F 3 "~" H 5600 2950 50  0001 C CNN
	1    5600 2950
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 5F425619
P 4900 2950
F 0 "C1" H 5015 2996 50  0000 L CNN
F 1 "100uf" H 5015 2905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4938 2800 50  0001 C CNN
F 3 "~" H 4900 2950 50  0001 C CNN
	1    4900 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3250 5600 3250
Wire Wire Line
	4700 2700 4700 2750
Wire Wire Line
	4900 3500 4900 3450
Connection ~ 4900 3450
Wire Wire Line
	4900 3450 4900 3100
Wire Wire Line
	4650 3450 4900 3450
Wire Wire Line
	4900 2800 4900 2750
Wire Wire Line
	4900 2750 4700 2750
Connection ~ 4700 2750
Wire Wire Line
	4700 2750 4700 3050
Wire Wire Line
	5300 3150 5300 3100
Wire Wire Line
	5600 3100 5600 3250
Connection ~ 5600 3250
Wire Wire Line
	5600 3250 6000 3250
Wire Wire Line
	4900 2750 5300 2750
Wire Wire Line
	5300 2750 5300 2800
Connection ~ 4900 2750
Wire Wire Line
	5300 2750 5600 2750
Wire Wire Line
	5600 2750 5600 2800
Connection ~ 5300 2750
Text Label 6000 3250 0    50   ~ 0
DCC_IN
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5F450AF3
P 7650 2600
F 0 "J2" H 7730 2592 50  0000 L CNN
F 1 "Conn_01x04" H 7730 2501 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 7650 2600 50  0001 C CNN
F 3 "~" H 7650 2600 50  0001 C CNN
	1    7650 2600
	1    0    0    -1  
$EndComp
Text Label 7150 2600 0    50   ~ 0
ack
Text Label 7150 2700 0    50   ~ 0
DCC_IN
Wire Wire Line
	7150 2600 7450 2600
Wire Wire Line
	7150 2700 7450 2700
$Comp
L power:GND #PWR05
U 1 1 5F4559C2
P 7400 2850
F 0 "#PWR05" H 7400 2600 50  0001 C CNN
F 1 "GND" H 7405 2677 50  0000 C CNN
F 2 "" H 7400 2850 50  0001 C CNN
F 3 "" H 7400 2850 50  0001 C CNN
	1    7400 2850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR04
U 1 1 5F455E48
P 7400 2450
F 0 "#PWR04" H 7400 2300 50  0001 C CNN
F 1 "VCC" H 7415 2623 50  0000 C CNN
F 2 "" H 7400 2450 50  0001 C CNN
F 3 "" H 7400 2450 50  0001 C CNN
	1    7400 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2450 7400 2500
Wire Wire Line
	7400 2500 7450 2500
Wire Wire Line
	7400 2850 7400 2800
Wire Wire Line
	7400 2800 7450 2800
$Comp
L Mechanical:MountingHole H1
U 1 1 5F46D1CB
P 1200 5250
F 0 "H1" H 1300 5296 50  0000 L CNN
F 1 "MountingHole" H 1300 5205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 1200 5250 50  0001 C CNN
F 3 "~" H 1200 5250 50  0001 C CNN
	1    1200 5250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5F46E116
P 1950 5250
F 0 "H3" H 2050 5296 50  0000 L CNN
F 1 "MountingHole" H 2050 5205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 1950 5250 50  0001 C CNN
F 3 "~" H 1950 5250 50  0001 C CNN
	1    1950 5250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5F46E5A1
P 1200 5550
F 0 "H2" H 1300 5596 50  0000 L CNN
F 1 "MountingHole" H 1300 5505 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 1200 5550 50  0001 C CNN
F 3 "~" H 1200 5550 50  0001 C CNN
	1    1200 5550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5F46EA89
P 1950 5550
F 0 "H4" H 2050 5596 50  0000 L CNN
F 1 "MountingHole" H 2050 5505 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 1950 5550 50  0001 C CNN
F 3 "~" H 1950 5550 50  0001 C CNN
	1    1950 5550
	1    0    0    -1  
$EndComp
Text Label 2050 3150 0    50   ~ 0
J
Text Label 2050 3250 0    50   ~ 0
K
Text Label 1850 2250 0    50   ~ 0
J_ACK
Text Label 2650 2250 0    50   ~ 0
K_ACK
$EndSCHEMATC
