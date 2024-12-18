EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L MCU_ST_STM32F1:STM32F103CBTx U?
U 1 1 6119A7D4
P 1950 3200
AR Path="/6119A7D4" Ref="U?"  Part="1" 
AR Path="/6115F145/6119A7D4" Ref="U?"  Part="1" 
AR Path="/610BBBB3/6119A7D4" Ref="U1"  Part="1" 
F 0 "U1" H 1950 3250 50  0000 C CNN
F 1 "STM32F103CBTx" H 2600 1450 50  0000 C CNN
F 2 "STM32103_Devel:LQFP-48_7x7mm_P0.5mm" H 1350 1500 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 1950 3200 50  0001 C CNN
F 4 "C8304" H 1950 3200 50  0001 C CNN "LCSC"
	1    1950 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6119A7DA
P 1850 5100
AR Path="/6119A7DA" Ref="#PWR?"  Part="1" 
AR Path="/6115F145/6119A7DA" Ref="#PWR?"  Part="1" 
AR Path="/610BBBB3/6119A7DA" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 1850 4850 50  0001 C CNN
F 1 "GND" H 1855 4927 50  0000 C CNN
F 2 "" H 1850 5100 50  0001 C CNN
F 3 "" H 1850 5100 50  0001 C CNN
	1    1850 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4700 1950 4950
Wire Wire Line
	1950 4950 1850 4950
Wire Wire Line
	1850 4950 1850 5100
Connection ~ 1850 4950
Wire Wire Line
	1750 4700 1750 4950
Wire Wire Line
	1750 4950 1850 4950
Wire Wire Line
	1850 4700 1850 4950
$Comp
L power:GNDA #PWR?
U 1 1 6119A7E7
P 2050 5100
AR Path="/6119A7E7" Ref="#PWR?"  Part="1" 
AR Path="/6115F145/6119A7E7" Ref="#PWR?"  Part="1" 
AR Path="/610BBBB3/6119A7E7" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 2050 4850 50  0001 C CNN
F 1 "GNDA" H 2055 4927 50  0000 C CNN
F 2 "" H 2050 5100 50  0001 C CNN
F 3 "" H 2050 5100 50  0001 C CNN
	1    2050 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 5100 2050 4700
$Comp
L power:GND #PWR?
U 1 1 6119A7EE
P 1900 900
AR Path="/6119A7EE" Ref="#PWR?"  Part="1" 
AR Path="/6115F145/6119A7EE" Ref="#PWR?"  Part="1" 
AR Path="/610BBBB3/6119A7EE" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 1900 650 50  0001 C CNN
F 1 "GND" H 1905 727 50  0000 C CNN
F 2 "" H 1900 900 50  0001 C CNN
F 3 "" H 1900 900 50  0001 C CNN
	1    1900 900 
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 6119A7F4
P 1300 1600
AR Path="/6119A7F4" Ref="#PWR?"  Part="1" 
AR Path="/6115F145/6119A7F4" Ref="#PWR?"  Part="1" 
AR Path="/610BBBB3/6119A7F4" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 1300 1450 50  0001 C CNN
F 1 "VCC" V 1315 1727 50  0000 L CNN
F 2 "" H 1300 1600 50  0001 C CNN
F 3 "" H 1300 1600 50  0001 C CNN
	1    1300 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2050 1600 2050 1700
Wire Wire Line
	1950 1700 1950 1600
Connection ~ 1950 1600
Wire Wire Line
	1950 1600 2050 1600
Wire Wire Line
	1850 1700 1850 1600
Connection ~ 1850 1600
Wire Wire Line
	1850 1600 1950 1600
Wire Wire Line
	1750 1700 1750 1600
Connection ~ 1750 1600
Wire Wire Line
	1750 1600 1850 1600
$Comp
L Device:C C?
U 1 1 6119A805
P 2600 1150
AR Path="/6119A805" Ref="C?"  Part="1" 
AR Path="/6115F145/6119A805" Ref="C?"  Part="1" 
AR Path="/610BBBB3/6119A805" Ref="C4"  Part="1" 
F 0 "C4" H 2715 1196 50  0000 L CNN
F 1 "100nf" H 2715 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2638 1000 50  0001 C CNN
F 3 "~" H 2600 1150 50  0001 C CNN
F 4 " C49678" H 2600 1150 50  0001 C CNN "LCSC"
	1    2600 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6119A80C
P 2150 1150
AR Path="/6119A80C" Ref="C?"  Part="1" 
AR Path="/6115F145/6119A80C" Ref="C?"  Part="1" 
AR Path="/610BBBB3/6119A80C" Ref="C3"  Part="1" 
F 0 "C3" H 2265 1196 50  0000 L CNN
F 1 "100nf" H 2265 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2188 1000 50  0001 C CNN
F 3 "~" H 2150 1150 50  0001 C CNN
F 4 " C49678" H 2150 1150 50  0001 C CNN "LCSC"
	1    2150 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6119A813
P 1650 1150
AR Path="/6119A813" Ref="C?"  Part="1" 
AR Path="/6115F145/6119A813" Ref="C?"  Part="1" 
AR Path="/610BBBB3/6119A813" Ref="C2"  Part="1" 
F 0 "C2" H 1765 1196 50  0000 L CNN
F 1 "100nf" H 1765 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1688 1000 50  0001 C CNN
F 3 "~" H 1650 1150 50  0001 C CNN
F 4 " C49678" H 1650 1150 50  0001 C CNN "LCSC"
	1    1650 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6119A81A
P 1200 1150
AR Path="/6119A81A" Ref="C?"  Part="1" 
AR Path="/6115F145/6119A81A" Ref="C?"  Part="1" 
AR Path="/610BBBB3/6119A81A" Ref="C1"  Part="1" 
F 0 "C1" H 1315 1196 50  0000 L CNN
F 1 "100nf" H 1315 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1238 1000 50  0001 C CNN
F 3 "~" H 1200 1150 50  0001 C CNN
F 4 " C49678" H 1200 1150 50  0001 C CNN "LCSC"
	1    1200 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1000 2600 950 
Wire Wire Line
	2600 950  2150 950 
Wire Wire Line
	1900 950  1900 900 
Wire Wire Line
	2150 1000 2150 950 
Connection ~ 2150 950 
Wire Wire Line
	2150 950  1900 950 
Wire Wire Line
	1650 1000 1650 950 
Wire Wire Line
	1650 950  1900 950 
Connection ~ 1900 950 
Wire Wire Line
	1200 1000 1200 950 
Wire Wire Line
	1200 950  1650 950 
Connection ~ 1650 950 
Wire Wire Line
	2050 1600 2050 1500
Wire Wire Line
	2050 1500 2600 1500
Wire Wire Line
	2600 1500 2600 1300
Connection ~ 2050 1600
Wire Wire Line
	2150 1300 2150 1400
Wire Wire Line
	2150 1400 1950 1400
Wire Wire Line
	1950 1400 1950 1600
Wire Wire Line
	1850 1400 1650 1400
Wire Wire Line
	1650 1400 1650 1300
Wire Wire Line
	1850 1400 1850 1600
Wire Wire Line
	1200 1500 1200 1300
Wire Wire Line
	1750 1600 1750 1500
Wire Wire Line
	1750 1500 1200 1500
Text Label 1250 2300 2    50   ~ 0
OSC_IN
Text Label 1250 2400 2    50   ~ 0
OSC_OUT
$Comp
L power:VDDA #PWR?
U 1 1 6119A83B
P 2500 1600
AR Path="/6119A83B" Ref="#PWR?"  Part="1" 
AR Path="/6115F145/6119A83B" Ref="#PWR?"  Part="1" 
AR Path="/610BBBB3/6119A83B" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 2500 1450 50  0001 C CNN
F 1 "VDDA" V 2515 1728 50  0000 L CNN
F 2 "" H 2500 1600 50  0001 C CNN
F 3 "" H 2500 1600 50  0001 C CNN
	1    2500 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 1600 2150 1600
Wire Wire Line
	2150 1600 2150 1700
Text Label 1250 1900 2    50   ~ 0
RST
Text Label 1250 2100 2    50   ~ 0
BOOT0
Text Label 2650 3000 0    50   ~ 0
PA0
Text Label 2650 3100 0    50   ~ 0
PA1
Text Label 2650 3200 0    50   ~ 0
PA2
Text Label 2650 3300 0    50   ~ 0
PA3
Text Label 2650 3400 0    50   ~ 0
PA4
Text Label 2650 3500 0    50   ~ 0
PA5
Text Label 2650 3600 0    50   ~ 0
PA6
Text Label 2650 3700 0    50   ~ 0
PA7
Text Label 2650 3800 0    50   ~ 0
PA8
Text Label 2650 3900 0    50   ~ 0
PA9
Text Label 2650 4000 0    50   ~ 0
PA10
Text Label 2650 4100 0    50   ~ 0
PA11
Text Label 2650 4200 0    50   ~ 0
PA12
Text Label 2650 4300 0    50   ~ 0
PA13
Text Label 2650 4400 0    50   ~ 0
PA14
Text Label 2650 4500 0    50   ~ 0
PA15
Wire Wire Line
	2850 3000 2550 3000
Wire Wire Line
	2550 3100 2850 3100
Wire Wire Line
	2550 3200 2850 3200
Wire Wire Line
	2550 3300 2850 3300
Wire Wire Line
	2550 3400 2850 3400
Wire Wire Line
	2550 3500 2850 3500
Wire Wire Line
	2550 3600 2850 3600
Wire Wire Line
	2550 3700 2850 3700
Wire Wire Line
	2550 3800 2850 3800
Wire Wire Line
	2550 3900 2850 3900
Wire Wire Line
	2550 4000 2850 4000
Wire Wire Line
	2550 4100 2850 4100
Wire Wire Line
	2550 4200 2850 4200
Wire Wire Line
	2550 4300 2850 4300
Wire Wire Line
	2550 4400 2850 4400
Wire Wire Line
	2550 4500 2850 4500
Text Label 1150 3000 2    50   ~ 0
PB0
Text Label 1150 3100 2    50   ~ 0
PB1
Text Label 1150 3200 2    50   ~ 0
PB2
Text Label 1150 3300 2    50   ~ 0
PB3
Text Label 1150 3400 2    50   ~ 0
PB4
Text Label 1150 3500 2    50   ~ 0
PB5
Text Label 1150 3600 2    50   ~ 0
PB6
Text Label 1150 3700 2    50   ~ 0
PB7
Text Label 1150 3800 2    50   ~ 0
PB8
Text Label 1150 3900 2    50   ~ 0
PB9
Text Label 1150 4000 2    50   ~ 0
PB10
Text Label 1150 4100 2    50   ~ 0
PB11
Text Label 1150 4200 2    50   ~ 0
PB12
Text Label 1150 4300 2    50   ~ 0
PB13
Text Label 1150 4400 2    50   ~ 0
PB14
Text Label 1150 4500 2    50   ~ 0
PB15
Wire Wire Line
	950  4500 1250 4500
Wire Wire Line
	950  4400 1250 4400
Wire Wire Line
	1250 4300 950  4300
Wire Wire Line
	950  4200 1250 4200
Wire Wire Line
	1250 4100 950  4100
Wire Wire Line
	1250 4000 950  4000
Wire Wire Line
	950  3900 1250 3900
Wire Wire Line
	1250 3800 950  3800
Wire Wire Line
	1250 3700 950  3700
Wire Wire Line
	950  3600 1250 3600
Wire Wire Line
	1250 3500 950  3500
Wire Wire Line
	950  3400 1250 3400
Wire Wire Line
	1250 3300 950  3300
Wire Wire Line
	950  3200 1250 3200
Wire Wire Line
	1250 3100 950  3100
Wire Wire Line
	950  3000 1250 3000
Text Label 1250 2600 2    50   ~ 0
PC13
Text Label 1250 2700 2    50   ~ 0
PC14
Text Label 1250 2800 2    50   ~ 0
PC15
Wire Wire Line
	1300 1600 1750 1600
Text HLabel 2850 3000 2    50   Input ~ 0
PA0
Text HLabel 2850 3100 2    50   Input ~ 0
PA1
Text HLabel 2850 3200 2    50   Input ~ 0
PA2
Text HLabel 2850 3300 2    50   Input ~ 0
PA3
Text HLabel 2850 3400 2    50   Input ~ 0
PA4
Text HLabel 2850 3500 2    50   Input ~ 0
PA5
Text HLabel 2850 3600 2    50   Input ~ 0
PA6
Text HLabel 2850 3700 2    50   Input ~ 0
PA7
Text HLabel 2850 3800 2    50   Input ~ 0
PA8
Text HLabel 2850 3900 2    50   Input ~ 0
PA9
Text HLabel 2850 4000 2    50   Input ~ 0
PA10
Text HLabel 2850 4100 2    50   Input ~ 0
PA11
Text HLabel 2850 4200 2    50   Input ~ 0
PA12
Text HLabel 2850 4300 2    50   Input ~ 0
PA13
Text HLabel 2850 4400 2    50   Input ~ 0
PA14
Text HLabel 2850 4500 2    50   Input ~ 0
PA15
Text HLabel 950  3000 0    50   Input ~ 0
PB0
Text HLabel 950  3100 0    50   Input ~ 0
PB1
Text HLabel 950  3200 0    50   Input ~ 0
PB2
Text HLabel 950  3300 0    50   Input ~ 0
PB3
Text HLabel 950  3400 0    50   Input ~ 0
PB4
Text HLabel 950  3500 0    50   Input ~ 0
PB5
Text HLabel 950  3600 0    50   Input ~ 0
PB6
Text HLabel 950  3700 0    50   Input ~ 0
PB7
Text HLabel 950  3800 0    50   Input ~ 0
PB8
Text HLabel 950  3900 0    50   Input ~ 0
PB9
Text HLabel 950  4000 0    50   Input ~ 0
PB10
Text HLabel 950  4100 0    50   Input ~ 0
PB11
Text HLabel 950  4200 0    50   Input ~ 0
PB12
Text HLabel 950  4300 0    50   Input ~ 0
PB13
Text HLabel 950  4400 0    50   Input ~ 0
PB14
Text HLabel 950  4500 0    50   Input ~ 0
PB15
$Comp
L Device:Crystal Y?
U 1 1 61267F6D
P 8200 3550
AR Path="/61267F6D" Ref="Y?"  Part="1" 
AR Path="/6115F145/61267F6D" Ref="Y?"  Part="1" 
AR Path="/610BBBB3/61267F6D" Ref="Y1"  Part="1" 
F 0 "Y1" V 8154 3681 50  0000 L CNN
F 1 "8MHz" V 8245 3681 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_5032-2Pin_5.0x3.2mm" V 8291 3681 50  0001 L CNN
F 3 "~" H 8200 3550 50  0001 C CNN
F 4 "C115962" V 8200 3550 50  0001 C CNN "LCSC"
	1    8200 3550
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 61267F74
P 7800 3750
AR Path="/61267F74" Ref="C?"  Part="1" 
AR Path="/6115F145/61267F74" Ref="C?"  Part="1" 
AR Path="/610BBBB3/61267F74" Ref="C8"  Part="1" 
F 0 "C8" V 7548 3750 50  0000 C CNN
F 1 "20pf" V 7639 3750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7838 3600 50  0001 C CNN
F 3 "~" H 7800 3750 50  0001 C CNN
F 4 "C1798" H 7800 3750 50  0001 C CNN "LCSC"
	1    7800 3750
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 61267F7B
P 7800 3350
AR Path="/61267F7B" Ref="C?"  Part="1" 
AR Path="/6115F145/61267F7B" Ref="C?"  Part="1" 
AR Path="/610BBBB3/61267F7B" Ref="C7"  Part="1" 
F 0 "C7" V 7548 3350 50  0000 C CNN
F 1 "20pf" V 7639 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7838 3200 50  0001 C CNN
F 3 "~" H 7800 3350 50  0001 C CNN
F 4 "C1798" H 7800 3350 50  0001 C CNN "LCSC"
	1    7800 3350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61267F81
P 7500 3550
AR Path="/61267F81" Ref="#PWR?"  Part="1" 
AR Path="/6115F145/61267F81" Ref="#PWR?"  Part="1" 
AR Path="/610BBBB3/61267F81" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 7500 3300 50  0001 C CNN
F 1 "GND" V 7505 3422 50  0000 R CNN
F 2 "" H 7500 3550 50  0001 C CNN
F 3 "" H 7500 3550 50  0001 C CNN
	1    7500 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 3550 7550 3550
Wire Wire Line
	7550 3550 7550 3750
Wire Wire Line
	7550 3750 7650 3750
Wire Wire Line
	7650 3350 7550 3350
Wire Wire Line
	7550 3350 7550 3550
Connection ~ 7550 3550
Wire Wire Line
	7950 3350 8200 3350
Wire Wire Line
	8200 3350 8200 3400
Wire Wire Line
	8200 3700 8200 3750
Wire Wire Line
	8200 3750 7950 3750
Wire Wire Line
	8200 3350 8550 3350
Connection ~ 8200 3350
Wire Wire Line
	8200 3750 8550 3750
Connection ~ 8200 3750
$Comp
L Device:Crystal Y?
U 1 1 61267F96
P 8200 4350
AR Path="/61267F96" Ref="Y?"  Part="1" 
AR Path="/6115F145/61267F96" Ref="Y?"  Part="1" 
AR Path="/610BBBB3/61267F96" Ref="Y2"  Part="1" 
F 0 "Y2" V 8154 4481 50  0000 L CNN
F 1 "Crystal" V 8245 4481 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3215-2Pin_3.2x1.5mm" H 8200 4350 50  0001 C CNN
F 3 "~" H 8200 4350 50  0001 C CNN
F 4 "C32346" V 8200 4350 50  0001 C CNN "LCSC"
	1    8200 4350
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 61267F9D
P 7800 4550
AR Path="/61267F9D" Ref="C?"  Part="1" 
AR Path="/6115F145/61267F9D" Ref="C?"  Part="1" 
AR Path="/610BBBB3/61267F9D" Ref="C10"  Part="1" 
F 0 "C10" V 7548 4550 50  0000 C CNN
F 1 "10pf" V 7639 4550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7838 4400 50  0001 C CNN
F 3 "~" H 7800 4550 50  0001 C CNN
F 4 " C1785" H 7800 4550 50  0001 C CNN "LCSC"
	1    7800 4550
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 61267FA4
P 7800 4150
AR Path="/61267FA4" Ref="C?"  Part="1" 
AR Path="/6115F145/61267FA4" Ref="C?"  Part="1" 
AR Path="/610BBBB3/61267FA4" Ref="C9"  Part="1" 
F 0 "C9" V 7548 4150 50  0000 C CNN
F 1 "10pf" V 7639 4150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7838 4000 50  0001 C CNN
F 3 "~" H 7800 4150 50  0001 C CNN
F 4 " C1785" H 7800 4150 50  0001 C CNN "LCSC"
	1    7800 4150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61267FAA
P 7500 4350
AR Path="/61267FAA" Ref="#PWR?"  Part="1" 
AR Path="/6115F145/61267FAA" Ref="#PWR?"  Part="1" 
AR Path="/610BBBB3/61267FAA" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 7500 4100 50  0001 C CNN
F 1 "GND" V 7505 4222 50  0000 R CNN
F 2 "" H 7500 4350 50  0001 C CNN
F 3 "" H 7500 4350 50  0001 C CNN
	1    7500 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 4350 7550 4350
Wire Wire Line
	7550 4350 7550 4550
Wire Wire Line
	7550 4550 7650 4550
Wire Wire Line
	7650 4150 7550 4150
Wire Wire Line
	7550 4150 7550 4350
Connection ~ 7550 4350
Wire Wire Line
	7950 4150 8200 4150
Wire Wire Line
	8200 4150 8200 4200
Wire Wire Line
	8200 4500 8200 4550
Wire Wire Line
	8200 4550 7950 4550
Wire Wire Line
	8200 4150 8550 4150
Connection ~ 8200 4150
Wire Wire Line
	8200 4550 8550 4550
Connection ~ 8200 4550
Text Label 8550 3350 0    50   ~ 0
OSC_IN
Text Label 8550 3750 0    50   ~ 0
OSC_OUT
Text Label 8550 4150 0    50   ~ 0
OSC32_IN
Text Label 8550 4550 0    50   ~ 0
OSC32_OUT
Text Label 8100 4850 2    50   ~ 0
OSC32_IN
Text Label 8100 4950 2    50   ~ 0
OSC32_OUT
Text Label 8300 4850 0    50   ~ 0
PC15
Text Label 8300 4950 0    50   ~ 0
PC14
Wire Wire Line
	8300 4850 8100 4850
Wire Wire Line
	8100 4950 8300 4950
Wire Notes Line
	3350 500  3350 5600
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J?
U 1 1 612C8F68
P 4350 1500
AR Path="/612C8F68" Ref="J?"  Part="1" 
AR Path="/6115F145/612C8F68" Ref="J?"  Part="1" 
AR Path="/610BBBB3/612C8F68" Ref="J1"  Part="1" 
F 0 "J1" H 4400 2117 50  0000 C CNN
F 1 "Conn_02x10_Odd_Even" H 4400 2026 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x10_P2.54mm_Vertical" H 4350 1500 50  0001 C CNN
F 3 "~" H 4350 1500 50  0001 C CNN
	1    4350 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 612C8F6E
P 4800 2200
AR Path="/612C8F6E" Ref="#PWR?"  Part="1" 
AR Path="/6115F145/612C8F6E" Ref="#PWR?"  Part="1" 
AR Path="/610BBBB3/612C8F6E" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 4800 1950 50  0001 C CNN
F 1 "GND" H 4805 2027 50  0000 C CNN
F 2 "" H 4800 2200 50  0001 C CNN
F 3 "" H 4800 2200 50  0001 C CNN
	1    4800 2200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 612C8F74
P 4800 900
AR Path="/612C8F74" Ref="#PWR?"  Part="1" 
AR Path="/6115F145/612C8F74" Ref="#PWR?"  Part="1" 
AR Path="/610BBBB3/612C8F74" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 4800 750 50  0001 C CNN
F 1 "VCC" H 4815 1073 50  0000 C CNN
F 2 "" H 4800 900 50  0001 C CNN
F 3 "" H 4800 900 50  0001 C CNN
	1    4800 900 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 612C8F7A
P 3900 900
AR Path="/612C8F7A" Ref="#PWR?"  Part="1" 
AR Path="/6115F145/612C8F7A" Ref="#PWR?"  Part="1" 
AR Path="/610BBBB3/612C8F7A" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 3900 750 50  0001 C CNN
F 1 "VCC" H 3915 1073 50  0000 C CNN
F 2 "" H 3900 900 50  0001 C CNN
F 3 "" H 3900 900 50  0001 C CNN
	1    3900 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1200 4800 1200
Wire Wire Line
	4800 1200 4800 1300
Wire Wire Line
	4650 1100 4800 1100
Wire Wire Line
	4800 1100 4800 900 
Wire Wire Line
	3900 1100 3900 900 
Wire Wire Line
	4650 1300 4800 1300
Connection ~ 4800 1300
Wire Wire Line
	4800 1300 4800 1400
Wire Wire Line
	4650 1400 4800 1400
Connection ~ 4800 1400
Wire Wire Line
	4650 1500 4800 1500
Wire Wire Line
	4800 1400 4800 1500
Connection ~ 4800 1500
Wire Wire Line
	4800 1500 4800 1600
Connection ~ 4800 1600
Wire Wire Line
	4800 1600 4800 1700
Wire Wire Line
	4650 1600 4800 1600
Wire Wire Line
	4650 1700 4800 1700
Connection ~ 4800 1700
Wire Wire Line
	4800 1700 4800 1800
Wire Wire Line
	4650 1800 4800 1800
Connection ~ 4800 1800
Wire Wire Line
	4800 1800 4800 1900
Wire Wire Line
	4650 1900 4800 1900
Connection ~ 4800 1900
Wire Wire Line
	4800 1900 4800 2000
Wire Wire Line
	4650 2000 4800 2000
Connection ~ 4800 2000
Wire Wire Line
	4800 2000 4800 2200
Wire Wire Line
	3900 1100 4150 1100
NoConn ~ 4150 1200
NoConn ~ 4150 1300
NoConn ~ 4150 1600
NoConn ~ 4150 1900
NoConn ~ 4150 2000
Text Label 3850 1800 2    50   ~ 0
RST
Wire Wire Line
	3850 1800 4150 1800
Text Label 3850 1500 2    50   ~ 0
SWDCLK
Text Label 3850 1400 2    50   ~ 0
SWDIO
Wire Wire Line
	3850 1400 4150 1400
Wire Wire Line
	4150 1500 3850 1500
Text Label 3850 1700 2    50   ~ 0
SWO
Wire Wire Line
	3850 1700 4150 1700
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J?
U 1 1 612C8FAB
P 6100 1500
AR Path="/612C8FAB" Ref="J?"  Part="1" 
AR Path="/6115F145/612C8FAB" Ref="J?"  Part="1" 
AR Path="/610BBBB3/612C8FAB" Ref="J3"  Part="1" 
F 0 "J3" H 6150 2117 50  0000 C CNN
F 1 "Conn_02x05 Odd_Even" H 6150 2026 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical" H 6100 1500 50  0001 C CNN
F 3 "~" H 6100 1500 50  0001 C CNN
	1    6100 1500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 612C8FB1
P 5650 1150
AR Path="/612C8FB1" Ref="#PWR?"  Part="1" 
AR Path="/6115F145/612C8FB1" Ref="#PWR?"  Part="1" 
AR Path="/610BBBB3/612C8FB1" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 5650 1000 50  0001 C CNN
F 1 "VCC" H 5665 1323 50  0000 C CNN
F 2 "" H 5650 1150 50  0001 C CNN
F 3 "" H 5650 1150 50  0001 C CNN
	1    5650 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1150 5650 1300
Wire Wire Line
	5650 1300 5900 1300
$Comp
L power:GND #PWR?
U 1 1 612C8FB9
P 5550 1950
AR Path="/612C8FB9" Ref="#PWR?"  Part="1" 
AR Path="/6115F145/612C8FB9" Ref="#PWR?"  Part="1" 
AR Path="/610BBBB3/612C8FB9" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 5550 1700 50  0001 C CNN
F 1 "GND" H 5555 1777 50  0000 C CNN
F 2 "" H 5550 1950 50  0001 C CNN
F 3 "" H 5550 1950 50  0001 C CNN
	1    5550 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1400 5900 1400
Wire Wire Line
	5900 1500 5550 1500
Wire Wire Line
	5550 1400 5550 1500
Connection ~ 5550 1500
NoConn ~ 5900 1600
Wire Wire Line
	5900 1700 5550 1700
Wire Wire Line
	5550 1500 5550 1700
Connection ~ 5550 1700
Wire Wire Line
	5550 1700 5550 1950
Text Label 6400 1300 0    50   ~ 0
SWDIO
Text Label 6400 1400 0    50   ~ 0
SWDCLK
Text Label 6400 1500 0    50   ~ 0
SWO
Text Label 6400 1700 0    50   ~ 0
RST
NoConn ~ 6400 1600
Text Label 5950 2400 2    50   ~ 0
SWDCLK
Text Label 5950 2300 2    50   ~ 0
SWDIO
Text Label 6150 2400 0    50   ~ 0
PA14
Text Label 6150 2300 0    50   ~ 0
PA13
Wire Wire Line
	5950 2300 6150 2300
Wire Wire Line
	6150 2400 5950 2400
Text Label 5950 2500 2    50   ~ 0
SWO
Text Label 6150 2500 0    50   ~ 0
PB3
Wire Wire Line
	5950 2500 6150 2500
$Comp
L Device:C C?
U 1 1 612F4A3F
P 4800 5000
AR Path="/612F4A3F" Ref="C?"  Part="1" 
AR Path="/6115F145/612F4A3F" Ref="C?"  Part="1" 
AR Path="/610BBBB3/612F4A3F" Ref="C5"  Part="1" 
F 0 "C5" H 4915 5046 50  0000 L CNN
F 1 "100nf" H 4915 4955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4838 4850 50  0001 C CNN
F 3 "~" H 4800 5000 50  0001 C CNN
F 4 " C49678" H 4800 5000 50  0001 C CNN "LCSC"
	1    4800 5000
	1    0    0    -1  
$EndComp
Text Label 4550 4750 2    50   ~ 0
RST
$Comp
L power:GND #PWR?
U 1 1 612F4A46
P 5100 5300
AR Path="/612F4A46" Ref="#PWR?"  Part="1" 
AR Path="/6115F145/612F4A46" Ref="#PWR?"  Part="1" 
AR Path="/610BBBB3/612F4A46" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 5100 5050 50  0001 C CNN
F 1 "GND" H 5105 5127 50  0000 C CNN
F 2 "" H 5100 5300 50  0001 C CNN
F 3 "" H 5100 5300 50  0001 C CNN
	1    5100 5300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 612F4A4C
P 5250 5000
AR Path="/612F4A4C" Ref="SW?"  Part="1" 
AR Path="/6115F145/612F4A4C" Ref="SW?"  Part="1" 
AR Path="/610BBBB3/612F4A4C" Ref="SW1"  Part="1" 
F 0 "SW1" V 5204 5148 50  0000 L CNN
F 1 "SW_Push" V 5295 5148 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 5250 5200 50  0001 C CNN
F 3 "~" H 5250 5200 50  0001 C CNN
	1    5250 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 4750 4800 4750
Wire Wire Line
	5250 4750 5250 4800
Wire Wire Line
	4800 4850 4800 4750
Connection ~ 4800 4750
Wire Wire Line
	4800 4750 5250 4750
Wire Wire Line
	4800 5150 4800 5250
Wire Wire Line
	4800 5250 5100 5250
Wire Wire Line
	5100 5250 5100 5300
Wire Wire Line
	5250 5200 5250 5250
Wire Wire Line
	5250 5250 5100 5250
Connection ~ 5100 5250
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 612F4A5D
P 5200 3450
AR Path="/612F4A5D" Ref="J?"  Part="1" 
AR Path="/6115F145/612F4A5D" Ref="J?"  Part="1" 
AR Path="/610BBBB3/612F4A5D" Ref="J2"  Part="1" 
F 0 "J2" H 5250 3767 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 5250 3676 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 5200 3450 50  0001 C CNN
F 3 "~" H 5200 3450 50  0001 C CNN
	1    5200 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 612F4A63
P 5250 3750
AR Path="/612F4A63" Ref="#PWR?"  Part="1" 
AR Path="/6115F145/612F4A63" Ref="#PWR?"  Part="1" 
AR Path="/610BBBB3/612F4A63" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 5250 3500 50  0001 C CNN
F 1 "GND" H 5255 3577 50  0000 C CNN
F 2 "" H 5250 3750 50  0001 C CNN
F 3 "" H 5250 3750 50  0001 C CNN
	1    5250 3750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 612F4A69
P 5250 2950
AR Path="/612F4A69" Ref="#PWR?"  Part="1" 
AR Path="/6115F145/612F4A69" Ref="#PWR?"  Part="1" 
AR Path="/610BBBB3/612F4A69" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 5250 2800 50  0001 C CNN
F 1 "VCC" H 5265 3123 50  0000 C CNN
F 2 "" H 5250 2950 50  0001 C CNN
F 3 "" H 5250 2950 50  0001 C CNN
	1    5250 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3000 5700 3000
Wire Wire Line
	5700 3000 5700 3350
Wire Wire Line
	5700 3350 5500 3350
Wire Wire Line
	5250 2950 5250 3000
Wire Wire Line
	5250 3000 4750 3000
Wire Wire Line
	4750 3000 4750 3350
Wire Wire Line
	4750 3350 5000 3350
Connection ~ 5250 3000
Wire Wire Line
	5250 3750 5250 3700
Wire Wire Line
	5250 3700 5700 3700
Wire Wire Line
	5700 3700 5700 3550
Wire Wire Line
	5700 3550 5500 3550
Wire Wire Line
	5000 3550 4750 3550
Wire Wire Line
	4750 3550 4750 3700
Connection ~ 5250 3700
Wire Wire Line
	4750 3700 5250 3700
$Comp
L Device:R R?
U 1 1 612F4A80
P 5950 3700
AR Path="/612F4A80" Ref="R?"  Part="1" 
AR Path="/6115F145/612F4A80" Ref="R?"  Part="1" 
AR Path="/610BBBB3/612F4A80" Ref="R3"  Part="1" 
F 0 "R3" H 6020 3746 50  0000 L CNN
F 1 "10K" H 6020 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6020 3609 50  0001 L CNN
F 3 "~" H 5950 3700 50  0001 C CNN
F 4 " C17414" H 5950 3700 50  0001 C CNN "LCSC"
	1    5950 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 612F4A87
P 4400 3650
AR Path="/612F4A87" Ref="R?"  Part="1" 
AR Path="/6115F145/612F4A87" Ref="R?"  Part="1" 
AR Path="/610BBBB3/612F4A87" Ref="R1"  Part="1" 
F 0 "R1" H 4470 3696 50  0000 L CNN
F 1 "10K" H 4470 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4470 3559 50  0001 L CNN
F 3 "~" H 4400 3650 50  0001 C CNN
F 4 " C17414" H 4400 3650 50  0001 C CNN "LCSC"
	1    4400 3650
	1    0    0    -1  
$EndComp
Text Label 4400 4000 0    50   ~ 0
BOOT0
Text Label 5950 4000 2    50   ~ 0
BOOT1
Wire Wire Line
	5950 4000 5950 3850
Wire Wire Line
	4400 4000 4400 3800
Wire Wire Line
	4400 3500 4400 3450
Wire Wire Line
	4400 3450 5000 3450
Wire Wire Line
	5500 3450 5950 3450
Wire Wire Line
	5950 3450 5950 3550
$Comp
L Device:R R?
U 1 1 612F4A96
P 5600 4750
AR Path="/612F4A96" Ref="R?"  Part="1" 
AR Path="/6115F145/612F4A96" Ref="R?"  Part="1" 
AR Path="/610BBBB3/612F4A96" Ref="R2"  Part="1" 
F 0 "R2" V 5393 4750 50  0000 C CNN
F 1 "10K" V 5484 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5670 4659 50  0001 L CNN
F 3 "~" H 5600 4750 50  0001 C CNN
F 4 " C17414" H 5600 4750 50  0001 C CNN "LCSC"
	1    5600 4750
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 612F4A9C
P 6050 4750
AR Path="/612F4A9C" Ref="#PWR?"  Part="1" 
AR Path="/6115F145/612F4A9C" Ref="#PWR?"  Part="1" 
AR Path="/610BBBB3/612F4A9C" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 6050 4600 50  0001 C CNN
F 1 "VCC" H 6065 4923 50  0000 C CNN
F 2 "" H 6050 4750 50  0001 C CNN
F 3 "" H 6050 4750 50  0001 C CNN
	1    6050 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4750 5750 4750
Wire Wire Line
	5450 4750 5250 4750
Connection ~ 5250 4750
Text Label 5150 4250 2    50   ~ 0
BOOT1
Text Label 5350 4250 0    50   ~ 0
PB2
Wire Wire Line
	5150 4250 5350 4250
$Comp
L Device:C C?
U 1 1 6132A903
P 7500 1550
AR Path="/6132A903" Ref="C?"  Part="1" 
AR Path="/6115F145/6132A903" Ref="C?"  Part="1" 
AR Path="/610BBBB3/6132A903" Ref="C6"  Part="1" 
F 0 "C6" H 7615 1596 50  0000 L CNN
F 1 "1uF" H 7615 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7538 1400 50  0001 C CNN
F 3 "~" H 7500 1550 50  0001 C CNN
F 4 "C28323" H 7500 1550 50  0001 C CNN "LCSC"
	1    7500 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6132A909
P 7500 1900
AR Path="/6132A909" Ref="#PWR?"  Part="1" 
AR Path="/6115F145/6132A909" Ref="#PWR?"  Part="1" 
AR Path="/610BBBB3/6132A909" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 7500 1650 50  0001 C CNN
F 1 "GND" H 7505 1727 50  0000 C CNN
F 2 "" H 7500 1900 50  0001 C CNN
F 3 "" H 7500 1900 50  0001 C CNN
	1    7500 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 6132A90F
P 9000 1900
AR Path="/6132A90F" Ref="#PWR?"  Part="1" 
AR Path="/6115F145/6132A90F" Ref="#PWR?"  Part="1" 
AR Path="/610BBBB3/6132A90F" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 9000 1650 50  0001 C CNN
F 1 "GNDA" H 9005 1727 50  0000 C CNN
F 2 "" H 9000 1900 50  0001 C CNN
F 3 "" H 9000 1900 50  0001 C CNN
	1    9000 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6132A916
P 7900 1550
AR Path="/6132A916" Ref="C?"  Part="1" 
AR Path="/6115F145/6132A916" Ref="C?"  Part="1" 
AR Path="/610BBBB3/6132A916" Ref="C11"  Part="1" 
F 0 "C11" H 8015 1596 50  0000 L CNN
F 1 "10nF" H 8015 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7938 1400 50  0001 C CNN
F 3 "~" H 7900 1550 50  0001 C CNN
F 4 "C1710" H 7900 1550 50  0001 C CNN "LCSC"
	1    7900 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6132A91D
P 8600 1550
AR Path="/6132A91D" Ref="C?"  Part="1" 
AR Path="/6115F145/6132A91D" Ref="C?"  Part="1" 
AR Path="/610BBBB3/6132A91D" Ref="C12"  Part="1" 
F 0 "C12" H 8715 1596 50  0000 L CNN
F 1 "1uF" H 8715 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8638 1400 50  0001 C CNN
F 3 "~" H 8600 1550 50  0001 C CNN
F 4 "C28323" H 8600 1550 50  0001 C CNN "LCSC"
	1    8600 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6132A924
P 9000 1550
AR Path="/6132A924" Ref="C?"  Part="1" 
AR Path="/6115F145/6132A924" Ref="C?"  Part="1" 
AR Path="/610BBBB3/6132A924" Ref="C13"  Part="1" 
F 0 "C13" H 9115 1596 50  0000 L CNN
F 1 "10nF" H 9115 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9038 1400 50  0001 C CNN
F 3 "~" H 9000 1550 50  0001 C CNN
F 4 "C1710" H 9000 1550 50  0001 C CNN "LCSC"
	1    9000 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:L L?
U 1 1 6132A92B
P 8250 1800
AR Path="/6132A92B" Ref="L?"  Part="1" 
AR Path="/6115F145/6132A92B" Ref="L?"  Part="1" 
AR Path="/610BBBB3/6132A92B" Ref="L2"  Part="1" 
F 0 "L2" V 8069 1800 50  0000 C CNN
F 1 "10uH" V 8160 1800 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 8250 1800 50  0001 C CNN
F 3 "~" H 8250 1800 50  0001 C CNN
F 4 " C1046" V 8250 1800 50  0001 C CNN "LCSC"
	1    8250 1800
	0    1    1    0   
$EndComp
$Comp
L Device:L L?
U 1 1 6132A932
P 8250 1350
AR Path="/6132A932" Ref="L?"  Part="1" 
AR Path="/6115F145/6132A932" Ref="L?"  Part="1" 
AR Path="/610BBBB3/6132A932" Ref="L1"  Part="1" 
F 0 "L1" V 8069 1350 50  0000 C CNN
F 1 "10uH" V 8160 1350 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 8250 1350 50  0001 C CNN
F 3 "~" H 8250 1350 50  0001 C CNN
F 4 " C1046" V 8250 1350 50  0001 C CNN "LCSC"
	1    8250 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 1400 7500 1350
Wire Wire Line
	7500 1350 7900 1350
Wire Wire Line
	8400 1350 8600 1350
Wire Wire Line
	9000 1350 9000 1400
Wire Wire Line
	8600 1400 8600 1350
Connection ~ 8600 1350
Wire Wire Line
	8600 1350 9000 1350
Wire Wire Line
	7900 1400 7900 1350
Connection ~ 7900 1350
Wire Wire Line
	7900 1350 8100 1350
Wire Wire Line
	7500 1700 7500 1800
Wire Wire Line
	7500 1800 7900 1800
Wire Wire Line
	7900 1700 7900 1800
Connection ~ 7900 1800
Wire Wire Line
	7900 1800 8100 1800
Wire Wire Line
	8400 1800 8600 1800
Wire Wire Line
	9000 1800 9000 1700
Wire Wire Line
	8600 1700 8600 1800
Connection ~ 8600 1800
Wire Wire Line
	8600 1800 9000 1800
Wire Wire Line
	7500 1900 7500 1800
Connection ~ 7500 1800
Wire Wire Line
	9000 1800 9000 1900
Connection ~ 9000 1800
$Comp
L power:VCC #PWR?
U 1 1 6132A950
P 7500 1250
AR Path="/6132A950" Ref="#PWR?"  Part="1" 
AR Path="/6115F145/6132A950" Ref="#PWR?"  Part="1" 
AR Path="/610BBBB3/6132A950" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 7500 1100 50  0001 C CNN
F 1 "VCC" H 7515 1423 50  0000 C CNN
F 2 "" H 7500 1250 50  0001 C CNN
F 3 "" H 7500 1250 50  0001 C CNN
	1    7500 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 1250 7500 1350
Connection ~ 7500 1350
Wire Wire Line
	9000 1250 9000 1350
Connection ~ 9000 1350
$Comp
L power:VDDA #PWR?
U 1 1 6132A95A
P 9000 1250
AR Path="/6132A95A" Ref="#PWR?"  Part="1" 
AR Path="/6115F145/6132A95A" Ref="#PWR?"  Part="1" 
AR Path="/610BBBB3/6132A95A" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 9000 1100 50  0001 C CNN
F 1 "VDDA" H 9015 1423 50  0000 C CNN
F 2 "" H 9000 1250 50  0001 C CNN
F 3 "" H 9000 1250 50  0001 C CNN
	1    9000 1250
	1    0    0    -1  
$EndComp
Text Notes 550  600  0    50   ~ 0
Main Section
Text Notes 600  5850 0    50   ~ 0
Compatible Chips:\n* STM32F103CBT8
Text Notes 3400 600  0    50   ~ 0
Debug SWD
Wire Notes Line
	6800 4400 3350 4400
Wire Notes Line
	6800 500  6800 5600
Text Notes 3400 2750 0    50   ~ 0
Boot Selection
Text Notes 3400 4500 0    50   ~ 0
Reset
Wire Notes Line
	3350 2650 9800 2650
Wire Notes Line
	500  5600 9750 5600
Wire Notes Line
	9800 500  9800 5600
Text Notes 6850 2750 0    50   ~ 0
Clocks
Text Notes 6850 600  0    50   ~ 0
AnalogVDD
Text HLabel 950  2600 0    50   Input ~ 0
PC13
Text HLabel 950  2700 0    50   Input ~ 0
PC14
Text HLabel 950  2800 0    50   Input ~ 0
PC15
Wire Wire Line
	1250 2800 950  2800
Wire Wire Line
	1250 2700 950  2700
Wire Wire Line
	1250 2600 950  2600
Text HLabel 900  2300 0    50   Input ~ 0
PD0
Text HLabel 900  2400 0    50   Input ~ 0
PD1
Text HLabel 900  2100 0    50   Input ~ 0
BOOT0
Text HLabel 950  1900 0    50   Input ~ 0
NRST
Wire Wire Line
	950  1900 1250 1900
Wire Wire Line
	900  2100 1250 2100
Wire Wire Line
	900  2300 1250 2300
Wire Wire Line
	900  2400 1250 2400
$EndSCHEMATC
