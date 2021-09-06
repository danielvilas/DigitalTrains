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
F 6 "pulse(0 14 0 10u 10u 100u 200u)" H 1580 2659 50  0000 L CNN "Spice_Model"
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
F 6 "pulse(14 0 0 10u 10u 100u 200u)" H 1180 3109 50  0000 L CNN "Spice_Model"
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
$Comp
L pspice:VSOURCE V3
U 1 1 60D2755A
P 1300 5200
F 0 "V3" H 1528 5246 50  0000 L CNN
F 1 "VSOURCE" H 1528 5155 50  0000 L CNN
F 2 "" H 1300 5200 50  0001 C CNN
F 3 "~" H 1300 5200 50  0001 C CNN
F 4 "V" H 1300 5200 50  0001 C CNN "Spice_Primitive"
F 5 "dc 5" H 1300 5200 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1300 5200 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1300 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60D2A005
P 1300 5650
F 0 "#PWR04" H 1300 5400 50  0001 C CNN
F 1 "GND" H 1305 5477 50  0000 C CNN
F 2 "" H 1300 5650 50  0001 C CNN
F 3 "" H 1300 5650 50  0001 C CNN
	1    1300 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5650 1300 5500
Wire Wire Line
	1300 4900 1300 4750
$Comp
L power:+5V #PWR05
U 1 1 60D610C6
P 1300 4750
F 0 "#PWR05" H 1300 4600 50  0001 C CNN
F 1 "+5V" H 1315 4923 50  0000 C CNN
F 2 "" H 1300 4750 50  0001 C CNN
F 3 "" H 1300 4750 50  0001 C CNN
	1    1300 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R RL1
U 1 1 60D1C205
P 3800 1700
F 0 "RL1" H 3870 1746 50  0000 L CNN
F 1 "1k" H 3870 1655 50  0000 L CNN
F 2 "" V 3730 1700 50  0001 C CNN
F 3 "~" H 3800 1700 50  0001 C CNN
	1    3800 1700
	1    0    0    -1  
$EndComp
Connection ~ 5900 3550
Wire Wire Line
	5900 3600 5900 3550
Wire Wire Line
	5800 3550 5900 3550
$Comp
L Device:C C2
U 1 1 60D9A4E6
P 5900 3750
F 0 "C2" H 6015 3796 50  0000 L CNN
F 1 "0.1u" H 6015 3705 50  0000 L CNN
F 2 "" H 5938 3600 50  0001 C CNN
F 3 "~" H 5900 3750 50  0001 C CNN
	1    5900 3750
	1    0    0    -1  
$EndComp
Text Label 3600 3950 2    50   ~ 0
DCC_2_O
Text Label 3600 3550 2    50   ~ 0
DCC_2_I
$Comp
L Device:D D2
U 1 1 60D9BBBA
P 5650 3550
F 0 "D2" H 5650 3767 50  0000 C CNN
F 1 "D" H 5650 3676 50  0000 C CNN
F 2 "" H 5650 3550 50  0001 C CNN
F 3 "~" H 5650 3550 50  0001 C CNN
F 4 "D" H 5650 3550 50  0001 C CNN "Spice_Primitive"
F 5 "1N4148" H 5650 3550 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5650 3550 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "2 1" H 5650 3550 50  0001 C CNN "Spice_Node_Sequence"
F 8 "spice/cts.lib" H 5650 3550 50  0001 C CNN "Spice_Lib_File"
	1    5650 3550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 60D96DE9
P 5900 4100
F 0 "#PWR09" H 5900 3850 50  0001 C CNN
F 1 "GND" H 5905 3927 50  0000 C CNN
F 2 "" H 5900 4100 50  0001 C CNN
F 3 "" H 5900 4100 50  0001 C CNN
	1    5900 4100
	1    0    0    -1  
$EndComp
Text Label 5900 3450 0    50   ~ 0
VC
Wire Wire Line
	5900 3450 5900 3550
Text Label 4550 3450 0    50   ~ 0
VD
Wire Wire Line
	4550 3450 4550 3550
Wire Wire Line
	5900 3900 5900 4100
$Comp
L power:GND #PWR010
U 1 1 60E0B2DC
P 4500 4100
F 0 "#PWR010" H 4500 3850 50  0001 C CNN
F 1 "GND" H 4505 3927 50  0000 C CNN
F 2 "" H 4500 4100 50  0001 C CNN
F 3 "" H 4500 4100 50  0001 C CNN
	1    4500 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3950 4400 3950
Wire Wire Line
	4500 3950 4500 4100
Wire Wire Line
	4400 3550 4550 3550
Connection ~ 4550 3550
Text Notes 3300 4850 0    50   ~ 0
* R2 Marca el tiempo de descarga\nde C2 por el transistor\n  - Rizado de salida\n* El tiempo de carga depende de \nla corriente y el valor de C2\n  - Esto es cuanto tardar en detectar carga 
Text Notes 8800 1650 0    50   ~ 0
* Rout1 marca la sensibilidad\n200K -> puede detectar 10K\n10K  -> detecta 2K5\n\n* Rout2 Controla Resolucion \nde Salida Analogica\n* Rout3 Controla la salida digital cuando \nesta a limite de deteccion
Text Notes 5450 2700 0    50   ~ 0
* El limite minimo de deteccion \nlo marca el D1\n\nSegun Vf (If)
$Comp
L Device:Transformer_1P_1S T1
U 1 1 60D1CE33
P 4000 3750
F 0 "T1" H 4000 4131 50  0000 C CNN
F 1 "Transformer_1P_1S" H 4000 4040 50  0000 C CNN
F 2 "" H 4000 3750 50  0001 C CNN
F 3 "~" H 4000 3750 50  0001 C CNN
F 4 "X" H 4000 3750 50  0001 C CNN "Spice_Primitive"
F 5 "Murata53100C" H 4000 3750 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4000 3750 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "spice/cts.lib" H 4000 3750 50  0001 C CNN "Spice_Lib_File"
	1    4000 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3550 4900 3550
$Comp
L Device:R Rs1
U 1 1 61286B15
P 5050 3550
F 0 "Rs1" V 4843 3550 50  0000 C CNN
F 1 "0" V 4934 3550 50  0000 C CNN
F 2 "" V 4980 3550 50  0001 C CNN
F 3 "~" H 5050 3550 50  0001 C CNN
	1    5050 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5200 3550 5500 3550
$EndSCHEMATC
