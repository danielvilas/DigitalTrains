EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L Device:Q_NMOS_GSD Q?
U 1 1 6144E1EB
P 1600 4350
AR Path="/6144E1EB" Ref="Q?"  Part="1" 
AR Path="/6144CE74/6144E1EB" Ref="Q1"  Part="1" 
F 0 "Q1" H 1805 4396 50  0000 L CNN
F 1 "NXV55UNR" H 1805 4305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1800 4450 50  0001 C CNN
F 3 "~" H 1600 4350 50  0001 C CNN
	1    1600 4350
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6144E640
P 1500 4700
F 0 "#PWR0102" H 1500 4450 50  0001 C CNN
F 1 "GND" H 1505 4527 50  0000 C CNN
F 2 "" H 1500 4700 50  0001 C CNN
F 3 "" H 1500 4700 50  0001 C CNN
	1    1500 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 4700 1500 4550
Text Notes 550  1000 0    50   ~ 0
Led Resistance Calc for 15ma and 2.5V led:\n\n12 V -> 9.5/15*1000 -> 633 Ohm\n14 V -> 11.5/15*1000 -> 766 Ohm\n20 V -> 17.5/15*1000 -> 1166 Ohm
Text Notes 550  1700 0    50   ~ 0
Using a 1K resistor:\n\nIn  \ Led: 2V|    2,5V| 3V\n12V |  10ma|  9,5ma| 9ma\n14V |  12ma| 11,5ma| 11ma\n20V |  18ma| 17,5ma| 17ma\n
Text Notes 550  2450 0    50   ~ 0
Expected case: \n12V input, & 2.5V led -> near 10 mAmps, ligh ok\n\nWorstCases:\n12V input, & 3V led -> 9 mAmps,  Acceptable\n20V input, & 2V led -> 18 mAmps,  under <20ma specs\n\nFuture: add a 1K trimmer with 500 Ohm in series
Wire Notes Line
	550  2500 3700 2500
$Comp
L Device:R R?
U 1 1 61467F92
P 2200 4350
AR Path="/61467F92" Ref="R?"  Part="1" 
AR Path="/6144CE74/61467F92" Ref="R8"  Part="1" 
F 0 "R8" V 1993 4350 50  0000 C CNN
F 1 "1K" V 2084 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2130 4350 50  0001 C CNN
F 3 "~" H 2200 4350 50  0001 C CNN
	1    2200 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 4350 1800 4350
Wire Wire Line
	2350 4350 3000 4350
$Comp
L Connector_Generic:Conn_01x02 J11
U 1 1 6146AD71
P 2000 3750
F 0 "J11" H 2080 3742 50  0000 L CNN
F 1 "Conn_01x02" H 2080 3651 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2000 3750 50  0001 C CNN
F 3 "~" H 2000 3750 50  0001 C CNN
	1    2000 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 3850 1500 4150
$Comp
L Device:R R?
U 1 1 6146B76E
P 1500 3250
AR Path="/6146B76E" Ref="R?"  Part="1" 
AR Path="/6144CE74/6146B76E" Ref="R9"  Part="1" 
F 0 "R9" H 1430 3204 50  0000 R CNN
F 1 "1K" H 1430 3295 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 1430 3250 50  0001 C CNN
F 3 "~" H 1500 3250 50  0001 C CNN
	1    1500 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	1500 3400 1500 3750
Wire Wire Line
	1500 3100 1500 2800
Wire Wire Line
	1500 2800 1950 2800
Text HLabel 3100 3250 2    50   Input ~ 0
LedPWR
Text Label 3000 3250 2    50   ~ 0
_LedPWR
Wire Wire Line
	3000 3250 3100 3250
Text Label 1950 2800 0    50   ~ 0
_LedPWR
Wire Wire Line
	1500 3750 1800 3750
Wire Wire Line
	1800 3850 1500 3850
$Comp
L Connector_Generic:Conn_01x01 J9
U 1 1 6146ED09
P 850 3600
F 0 "J9" H 768 3375 50  0000 C CNN
F 1 "Conn_01x01" H 768 3466 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_1x2mm" H 850 3600 50  0001 C CNN
F 3 "~" H 850 3600 50  0001 C CNN
	1    850  3600
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J10
U 1 1 6146F97F
P 850 4000
F 0 "J10" H 768 3775 50  0000 C CNN
F 1 "Conn_01x01" H 768 3866 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_1x2mm" H 850 4000 50  0001 C CNN
F 3 "~" H 850 4000 50  0001 C CNN
	1    850  4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1050 3600 1400 3600
Wire Wire Line
	1400 3600 1400 3750
Wire Wire Line
	1400 3750 1500 3750
Connection ~ 1500 3750
Wire Wire Line
	1500 3850 1300 3850
Wire Wire Line
	1300 3850 1300 4000
Wire Wire Line
	1300 4000 1050 4000
Connection ~ 1500 3850
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 6147B2A0
P 1550 6700
AR Path="/6147B2A0" Ref="Q?"  Part="1" 
AR Path="/6144CE74/6147B2A0" Ref="Q2"  Part="1" 
F 0 "Q2" H 1755 6746 50  0000 L CNN
F 1 "NXV55UNR" H 1755 6655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1750 6800 50  0001 C CNN
F 3 "~" H 1550 6700 50  0001 C CNN
	1    1550 6700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 6147B2A6
P 1450 7050
F 0 "#PWR026" H 1450 6800 50  0001 C CNN
F 1 "GND" H 1455 6877 50  0000 C CNN
F 2 "" H 1450 7050 50  0001 C CNN
F 3 "" H 1450 7050 50  0001 C CNN
	1    1450 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 7050 1450 6900
$Comp
L Device:R R?
U 1 1 6147B2AD
P 2150 6700
AR Path="/6147B2AD" Ref="R?"  Part="1" 
AR Path="/6144CE74/6147B2AD" Ref="R11"  Part="1" 
F 0 "R11" V 1943 6700 50  0000 C CNN
F 1 "1K" V 2034 6700 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2080 6700 50  0001 C CNN
F 3 "~" H 2150 6700 50  0001 C CNN
	1    2150 6700
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 6700 1750 6700
Wire Wire Line
	2300 6700 2950 6700
$Comp
L Connector_Generic:Conn_01x02 J14
U 1 1 6147B2B5
P 1950 6100
F 0 "J14" H 2030 6092 50  0000 L CNN
F 1 "Conn_01x02" H 2030 6001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1950 6100 50  0001 C CNN
F 3 "~" H 1950 6100 50  0001 C CNN
	1    1950 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 6200 1450 6500
$Comp
L Device:R R?
U 1 1 6147B2BC
P 1450 5600
AR Path="/6147B2BC" Ref="R?"  Part="1" 
AR Path="/6144CE74/6147B2BC" Ref="R10"  Part="1" 
F 0 "R10" H 1380 5554 50  0000 R CNN
F 1 "1K" H 1380 5645 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 1380 5600 50  0001 C CNN
F 3 "~" H 1450 5600 50  0001 C CNN
	1    1450 5600
	-1   0    0    1   
$EndComp
Wire Wire Line
	1450 5750 1450 6100
Wire Wire Line
	1450 5450 1450 5150
Wire Wire Line
	1450 5150 1900 5150
Text Label 1900 5150 0    50   ~ 0
_LedPWR
Wire Wire Line
	1450 6100 1750 6100
Wire Wire Line
	1750 6200 1450 6200
$Comp
L Connector_Generic:Conn_01x01 J12
U 1 1 6147B2C8
P 800 5950
F 0 "J12" H 718 5725 50  0000 C CNN
F 1 "Conn_01x01" H 718 5816 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_1x2mm" H 800 5950 50  0001 C CNN
F 3 "~" H 800 5950 50  0001 C CNN
	1    800  5950
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J13
U 1 1 6147B2CE
P 800 6350
F 0 "J13" H 718 6125 50  0000 C CNN
F 1 "Conn_01x01" H 718 6216 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_1x2mm" H 800 6350 50  0001 C CNN
F 3 "~" H 800 6350 50  0001 C CNN
	1    800  6350
	-1   0    0    1   
$EndComp
Wire Wire Line
	1000 5950 1350 5950
Wire Wire Line
	1350 5950 1350 6100
Wire Wire Line
	1350 6100 1450 6100
Connection ~ 1450 6100
Wire Wire Line
	1450 6200 1250 6200
Wire Wire Line
	1250 6200 1250 6350
Wire Wire Line
	1250 6350 1000 6350
Connection ~ 1450 6200
Text HLabel 3000 4350 2    50   Input ~ 0
ThrownLed
Text HLabel 2950 6700 2    50   Input ~ 0
ClosedLed
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 614A5415
P 5750 1500
AR Path="/614A5415" Ref="J?"  Part="1" 
AR Path="/6144CE74/614A5415" Ref="J15"  Part="1" 
F 0 "J15" H 5830 1542 50  0000 L CNN
F 1 "Conn_01x03" H 5830 1451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5750 1500 50  0001 C CNN
F 3 "~" H 5750 1500 50  0001 C CNN
	1    5750 1500
	1    0    0    -1  
$EndComp
Wire Notes Line
	3700 500  3700 7750
Text HLabel 5200 1500 0    50   Input ~ 0
ServoPwr
Wire Wire Line
	5200 1400 5550 1400
Text HLabel 5200 1400 0    50   Input ~ 0
ServoSig
Wire Wire Line
	5200 1500 5550 1500
$Comp
L power:GND #PWR027
U 1 1 614C58B9
P 5450 1650
F 0 "#PWR027" H 5450 1400 50  0001 C CNN
F 1 "GND" H 5455 1477 50  0000 C CNN
F 2 "" H 5450 1650 50  0001 C CNN
F 3 "" H 5450 1650 50  0001 C CNN
	1    5450 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1650 5450 1600
Wire Wire Line
	5450 1600 5550 1600
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 614D9528
P 8400 2150
AR Path="/614D9528" Ref="Q?"  Part="1" 
AR Path="/6144CE74/614D9528" Ref="Q4"  Part="1" 
F 0 "Q4" H 8605 2196 50  0000 L CNN
F 1 "NXV55UNR" H 8605 2105 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8600 2250 50  0001 C CNN
F 3 "~" H 8400 2150 50  0001 C CNN
	1    8400 2150
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 614D952E
P 8300 2500
F 0 "#PWR0105" H 8300 2250 50  0001 C CNN
F 1 "GND" H 8305 2327 50  0000 C CNN
F 2 "" H 8300 2500 50  0001 C CNN
F 3 "" H 8300 2500 50  0001 C CNN
	1    8300 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2500 8300 2350
$Comp
L Device:R R?
U 1 1 614D9535
P 9000 2150
AR Path="/614D9535" Ref="R?"  Part="1" 
AR Path="/6144CE74/614D9535" Ref="R13"  Part="1" 
F 0 "R13" V 8793 2150 50  0000 C CNN
F 1 "1K" V 8884 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 8930 2150 50  0001 C CNN
F 3 "~" H 9000 2150 50  0001 C CNN
	1    9000 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	8850 2150 8600 2150
Wire Wire Line
	9150 2150 9550 2150
Text HLabel 7400 1300 0    50   Input ~ 0
ServoPwr
$Comp
L Device:R R?
U 1 1 614E164A
P 7750 1550
AR Path="/614E164A" Ref="R?"  Part="1" 
AR Path="/6144CE74/614E164A" Ref="R12"  Part="1" 
F 0 "R12" V 7543 1550 50  0000 C CNN
F 1 "1K" V 7634 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 7680 1550 50  0001 C CNN
F 3 "~" H 7750 1550 50  0001 C CNN
	1    7750 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	7750 1400 7750 1300
Wire Wire Line
	7750 1300 8100 1300
Wire Wire Line
	7400 1300 7750 1300
Connection ~ 7750 1300
Wire Wire Line
	7750 1700 7750 1850
Wire Wire Line
	7750 1850 8300 1850
Wire Wire Line
	8300 1850 8300 1950
Wire Wire Line
	8300 1600 8300 1850
Connection ~ 8300 1850
Wire Wire Line
	8500 1300 9250 1300
$Comp
L Device:Q_PMOS_GSD Q3
U 1 1 614E83DD
P 8300 1400
F 0 "Q3" V 8642 1400 50  0000 C CNN
F 1 "NXV90EPR" V 8551 1400 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8500 1500 50  0001 C CNN
F 3 "~" H 8300 1400 50  0001 C CNN
	1    8300 1400
	0    1    -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J16
U 1 1 614EA155
P 9450 1300
F 0 "J16" H 9530 1292 50  0000 L CNN
F 1 "Conn_01x02" H 9530 1201 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9450 1300 50  0001 C CNN
F 3 "~" H 9450 1300 50  0001 C CNN
	1    9450 1300
	1    0    0    -1  
$EndComp
Text HLabel 9550 2150 2    50   Input ~ 0
Rele_EN
$Comp
L power:GND #PWR0106
U 1 1 614EBC79
P 9150 1450
F 0 "#PWR0106" H 9150 1200 50  0001 C CNN
F 1 "GND" H 9155 1277 50  0000 C CNN
F 2 "" H 9150 1450 50  0001 C CNN
F 3 "" H 9150 1450 50  0001 C CNN
	1    9150 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 1450 9150 1400
Wire Wire Line
	9150 1400 9250 1400
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 6150FBC0
P 7300 4400
AR Path="/6150FBC0" Ref="J?"  Part="1" 
AR Path="/6144CE74/6150FBC0" Ref="J17"  Part="1" 
F 0 "J17" H 7380 4392 50  0000 L CNN
F 1 "Conn_01x04" H 7380 4301 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7300 4400 50  0001 C CNN
F 3 "~" H 7300 4400 50  0001 C CNN
	1    7300 4400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR028
U 1 1 61510C08
P 6150 5100
F 0 "#PWR028" H 6150 4850 50  0001 C CNN
F 1 "GND" H 6155 4927 50  0000 C CNN
F 2 "" H 6150 5100 50  0001 C CNN
F 3 "" H 6150 5100 50  0001 C CNN
	1    6150 5100
	1    0    0    -1  
$EndComp
Text HLabel 5750 4600 0    50   Input ~ 0
CfgBasic
$Comp
L Device:R R?
U 1 1 6151276B
P 6150 4750
AR Path="/6151276B" Ref="R?"  Part="1" 
AR Path="/6144CE74/6151276B" Ref="R14"  Part="1" 
F 0 "R14" V 5943 4750 50  0000 C CNN
F 1 "1K" V 6034 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6080 4750 50  0001 C CNN
F 3 "~" H 6150 4750 50  0001 C CNN
	1    6150 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 4600 5750 4600
Connection ~ 6150 4600
Wire Wire Line
	6150 5100 6150 4900
Wire Wire Line
	6150 4600 7200 4600
$Comp
L power:GND #PWR029
U 1 1 6151E413
P 8550 5100
F 0 "#PWR029" H 8550 4850 50  0001 C CNN
F 1 "GND" H 8555 4927 50  0000 C CNN
F 2 "" H 8550 5100 50  0001 C CNN
F 3 "" H 8550 5100 50  0001 C CNN
	1    8550 5100
	-1   0    0    -1  
$EndComp
Text HLabel 8950 4600 2    50   Input ~ 0
CfgAdvanced
$Comp
L Device:R R?
U 1 1 6151E41A
P 8550 4750
AR Path="/6151E41A" Ref="R?"  Part="1" 
AR Path="/6144CE74/6151E41A" Ref="R15"  Part="1" 
F 0 "R15" V 8343 4750 50  0000 C CNN
F 1 "1K" V 8434 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 8480 4750 50  0001 C CNN
F 3 "~" H 8550 4750 50  0001 C CNN
	1    8550 4750
	1    0    0    1   
$EndComp
Wire Wire Line
	8550 4600 8950 4600
Connection ~ 8550 4600
Wire Wire Line
	8550 5100 8550 4900
Wire Wire Line
	8550 4600 7500 4600
Text HLabel 7500 5100 2    50   Input ~ 0
CfgPwr
Wire Wire Line
	7500 5100 7300 5100
Wire Wire Line
	7300 5100 7300 4700
Wire Wire Line
	7400 4600 7400 4700
Wire Wire Line
	7400 4700 7300 4700
Connection ~ 7300 4700
Wire Wire Line
	7300 4700 7300 4600
$Comp
L Device:LED D?
U 1 1 615405E1
P 9500 4050
AR Path="/615405E1" Ref="D?"  Part="1" 
AR Path="/6144CE74/615405E1" Ref="D4"  Part="1" 
F 0 "D4" H 9493 4267 50  0000 C CNN
F 1 "LED" H 9493 4176 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 9500 4050 50  0001 C CNN
F 3 "~" H 9500 4050 50  0001 C CNN
	1    9500 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 615405E9
P 8900 4050
AR Path="/615405E9" Ref="R?"  Part="1" 
AR Path="/6144CE74/615405E9" Ref="R16"  Part="1" 
F 0 "R16" V 8693 4050 50  0000 C CNN
F 1 "100" V 8784 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 8830 4050 50  0001 C CNN
F 3 "~" H 8900 4050 50  0001 C CNN
F 4 "603-AC1206FR-10100RL" H 8900 4050 50  0001 C CNN "Mouser"
F 5 "AC1206FR-10100RL" H 8900 4050 50  0001 C CNN "REF"
	1    8900 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 4050 8500 4050
Wire Wire Line
	9050 4050 9350 4050
Wire Wire Line
	9850 4050 9650 4050
Text HLabel 9850 4050 2    50   Input ~ 0
CfgPwr
Text HLabel 8500 4050 0    50   Input ~ 0
StatusLed
$EndSCHEMATC