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
L Simulation_SPICE:VPULSE V2
U 1 1 60D1A7E0
P 1450 2750
F 0 "V2" H 1580 2841 50  0000 L CNN
F 1 "VPULSE" H 1580 2750 50  0000 L CNN
F 2 "" H 1450 2750 50  0001 C CNN
F 3 "~" H 1450 2750 50  0001 C CNN
F 4 "Y" H 1450 2750 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 1450 2750 50  0001 L CNN "Spice_Primitive"
F 6 "pulse(0 14 0 0 0 100u 200u)" H 1580 2659 50  0000 L CNN "Spice_Model"
	1    1450 2750
	1    0    0    -1  
$EndComp
$Comp
L Simulation_SPICE:VPULSE V1
U 1 1 60D1AB74
P 1050 3200
F 0 "V1" H 1180 3291 50  0000 L CNN
F 1 "VPULSE" H 1180 3200 50  0000 L CNN
F 2 "" H 1050 3200 50  0001 C CNN
F 3 "~" H 1050 3200 50  0001 C CNN
F 4 "Y" H 1050 3200 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 1050 3200 50  0001 L CNN "Spice_Primitive"
F 6 "pulse(14 0 0 0 0 100u 200u)" H 1180 3109 50  0000 L CNN "Spice_Model"
	1    1050 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 60D1B54F
P 1050 3500
F 0 "#PWR01" H 1050 3250 50  0001 C CNN
F 1 "GND" H 1055 3327 50  0000 C CNN
F 2 "" H 1050 3500 50  0001 C CNN
F 3 "" H 1050 3500 50  0001 C CNN
	1    1050 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 60D1B8B1
P 1450 3500
F 0 "#PWR02" H 1450 3250 50  0001 C CNN
F 1 "GND" H 1455 3327 50  0000 C CNN
F 2 "" H 1450 3500 50  0001 C CNN
F 3 "" H 1450 3500 50  0001 C CNN
	1    1450 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2950 1450 3500
Wire Wire Line
	1050 3400 1050 3500
$Comp
L Device:R R1
U 1 1 60D1C205
P 3800 1700
F 0 "R1" H 3870 1746 50  0000 L CNN
F 1 "150Meg" H 3870 1655 50  0000 L CNN
F 2 "" V 3730 1700 50  0001 C CNN
F 3 "~" H 3800 1700 50  0001 C CNN
	1    3800 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2550 1450 1850
Wire Wire Line
	1450 1850 2700 1850
Wire Wire Line
	3800 1550 1050 1550
Wire Wire Line
	1050 1550 1050 3000
Wire Wire Line
	3100 1850 3800 1850
Text Label 1800 1550 0    50   ~ 0
DCC_1
Text Label 3100 1850 0    50   ~ 0
DCC_2_O
Text Label 2700 1850 2    50   ~ 0
DCC_2_I
Text Label 5800 3800 2    50   ~ 0
DCC_2_I
Text Label 5800 2000 2    50   ~ 0
DCC_2_O
$Comp
L pspice:DIODE D3
U 1 1 60D22EE3
P 6050 2650
F 0 "D3" V 6096 2522 50  0000 R CNN
F 1 "DIODE" V 6005 2522 50  0000 R CNN
F 2 "" H 6050 2650 50  0001 C CNN
F 3 "~" H 6050 2650 50  0001 C CNN
F 4 "X" H 6050 2650 50  0001 C CNN "Spice_Primitive"
F 5 "1N4148" H 6050 2650 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6050 2650 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "eval.lib" H 6050 2650 50  0001 C CNN "Spice_Lib_File"
	1    6050 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 3800 5800 3450
Wire Wire Line
	5800 3450 6050 3450
Wire Wire Line
	6050 3450 6050 3350
Wire Wire Line
	5800 3450 5500 3450
Wire Wire Line
	5500 3450 5500 3350
Connection ~ 5800 3450
Wire Wire Line
	5500 2450 5500 2400
Wire Wire Line
	5500 2400 5800 2400
Wire Wire Line
	5800 2400 5800 2000
Wire Wire Line
	6050 2450 6050 2400
Wire Wire Line
	6050 2400 5800 2400
Connection ~ 5800 2400
Wire Wire Line
	5500 2850 5500 2950
Wire Wire Line
	6050 2950 6050 2850
Wire Wire Line
	7800 3250 7800 3450
Wire Wire Line
	7800 3450 6050 3450
Connection ~ 6050 3450
$Comp
L Device:R R2
U 1 1 60D2A48C
P 7050 2400
F 0 "R2" H 7120 2446 50  0000 L CNN
F 1 "22" H 7120 2355 50  0000 L CNN
F 2 "" V 6980 2400 50  0001 C CNN
F 3 "~" H 7050 2400 50  0001 C CNN
	1    7050 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6900 2400 6050 2400
Connection ~ 6050 2400
Wire Wire Line
	7200 2400 7800 2400
Wire Wire Line
	7800 2400 7800 3050
$Comp
L power:GND #PWR03
U 1 1 60D2D2E8
P 8600 3650
F 0 "#PWR03" H 8600 3400 50  0001 C CNN
F 1 "GND" H 8605 3477 50  0000 C CNN
F 2 "" H 8600 3650 50  0001 C CNN
F 3 "" H 8600 3650 50  0001 C CNN
	1    8600 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3250 8400 3250
$Comp
L Device:R R3
U 1 1 60D2E2CE
P 9250 2350
F 0 "R3" H 9320 2396 50  0000 L CNN
F 1 "100K" H 9320 2305 50  0000 L CNN
F 2 "" V 9180 2350 50  0001 C CNN
F 3 "~" H 9250 2350 50  0001 C CNN
	1    9250 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9100 2350 8550 2350
Wire Wire Line
	8550 2350 8550 2900
$Comp
L Simulation_SPICE:VDC V3
U 1 1 60D2F9F9
P 9700 3200
F 0 "V3" H 9830 3291 50  0000 L CNN
F 1 "VDC" H 9830 3200 50  0000 L CNN
F 2 "" H 9700 3200 50  0001 C CNN
F 3 "~" H 9700 3200 50  0001 C CNN
F 4 "Y" H 9700 3200 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 9700 3200 50  0001 L CNN "Spice_Primitive"
F 6 "dc 5" H 9830 3109 50  0000 L CNN "Spice_Model"
	1    9700 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60D30169
P 9700 3650
F 0 "#PWR04" H 9700 3400 50  0001 C CNN
F 1 "GND" H 9705 3477 50  0000 C CNN
F 2 "" H 9700 3650 50  0001 C CNN
F 3 "" H 9700 3650 50  0001 C CNN
	1    9700 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 2350 9700 2350
Wire Wire Line
	9700 2350 9700 3000
Wire Wire Line
	9700 3400 9700 3650
Text Label 8800 2900 0    50   ~ 0
VTest
Wire Wire Line
	8800 2900 8550 2900
Wire Wire Line
	8400 3050 8550 3050
Wire Wire Line
	8550 3050 8550 2900
Connection ~ 8550 2900
$Comp
L Isolator:TLP185 U1
U 1 1 60D1FC59
P 8100 3150
F 0 "U1" H 8100 3475 50  0000 C CNN
F 1 "TLP185" H 8100 3384 50  0000 C CNN
F 2 "Package_SO:SOIC-4_4.55x3.7mm_P2.54mm" H 8100 2850 50  0001 C CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=11791&prodName=TLP185" H 8100 3150 50  0001 L CNN
F 4 "X" H 8100 3150 50  0001 C CNN "Spice_Primitive"
F 5 "PS2561F" H 8100 3150 50  0001 C CNN "Spice_Model"
F 6 "Y" H 8100 3150 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "eval.lib" H 8100 3150 50  0001 C CNN "Spice_Lib_File"
	1    8100 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3250 8600 3650
$Comp
L pspice:DIODE D4
U 1 1 60D21E45
P 6050 3150
F 0 "D4" V 6096 3022 50  0000 R CNN
F 1 "DIODE" V 6005 3022 50  0000 R CNN
F 2 "" H 6050 3150 50  0001 C CNN
F 3 "~" H 6050 3150 50  0001 C CNN
F 4 "X" H 6050 3150 50  0001 C CNN "Spice_Primitive"
F 5 "1N4148" H 6050 3150 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6050 3150 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "eval.lib" H 6050 3150 50  0001 C CNN "Spice_Lib_File"
	1    6050 3150
	0    -1   -1   0   
$EndComp
$Comp
L pspice:DIODE D1
U 1 1 60D22377
P 5500 2650
F 0 "D1" V 5546 2522 50  0000 R CNN
F 1 "DIODE" V 5455 2522 50  0000 R CNN
F 2 "" H 5500 2650 50  0001 C CNN
F 3 "~" H 5500 2650 50  0001 C CNN
F 4 "X" H 5500 2650 50  0001 C CNN "Spice_Primitive"
F 5 "1N4148" H 5500 2650 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5500 2650 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "eval.lib" H 5500 2650 50  0001 C CNN "Spice_Lib_File"
	1    5500 2650
	0    1    1    0   
$EndComp
$Comp
L pspice:DIODE D2
U 1 1 60D2278A
P 5500 3150
F 0 "D2" V 5546 3022 50  0000 R CNN
F 1 "DIODE" V 5455 3022 50  0000 R CNN
F 2 "" H 5500 3150 50  0001 C CNN
F 3 "~" H 5500 3150 50  0001 C CNN
F 4 "X" H 5500 3150 50  0001 C CNN "Spice_Primitive"
F 5 "1N4148" H 5500 3150 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5500 3150 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "eval.lib" H 5500 3150 50  0001 C CNN "Spice_Lib_File"
	1    5500 3150
	0    1    1    0   
$EndComp
$EndSCHEMATC