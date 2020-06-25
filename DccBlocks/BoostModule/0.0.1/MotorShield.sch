EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "DCC Blocks/Boost"
Date "2020-06-08"
Rev "v0.0.1a"
Comp "Daniel Vilas"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Driver_Motor:L298P U3
U 1 1 5E973FAC
P 5550 1600
F 0 "U3" H 6100 2150 50  0000 C CNN
F 1 "L298P" H 5950 2250 50  0000 C CNN
F 2 "ArduinoDCC++:HSOP-20-1EP_11.0x15.9mm_P1.27mm_SlugUp" H 5700 1850 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000240.pdf" H 5700 1850 50  0001 C CNN
	1    5550 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5E97558D
P 5950 2550
F 0 "#PWR014" H 5950 2300 50  0001 C CNN
F 1 "GND" H 5955 2377 50  0000 C CNN
F 2 "" H 5950 2550 50  0001 C CNN
F 3 "" H 5950 2550 50  0001 C CNN
	1    5950 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2450 5450 2300
Wire Wire Line
	5550 2300 5550 2450
Connection ~ 5550 2450
Wire Wire Line
	5550 2450 5450 2450
Wire Wire Line
	5650 2300 5650 2450
Connection ~ 5650 2450
Wire Wire Line
	5650 2450 5550 2450
Wire Wire Line
	5950 2450 5950 2550
Wire Wire Line
	5650 2450 5750 2450
Wire Wire Line
	5750 2300 5750 2450
Connection ~ 5750 2450
Wire Wire Line
	5750 2450 5950 2450
Text Label 5650 750  0    50   ~ 0
VMot
Wire Wire Line
	5850 750  5650 750 
Wire Wire Line
	5650 750  5650 900 
$Comp
L power:+5V #PWR011
U 1 1 5E9773B6
P 5250 700
F 0 "#PWR011" H 5250 550 50  0001 C CNN
F 1 "+5V" H 5265 873 50  0000 C CNN
F 2 "" H 5250 700 50  0001 C CNN
F 3 "" H 5250 700 50  0001 C CNN
	1    5250 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 700  5250 750 
Wire Wire Line
	5250 750  5550 750 
Wire Wire Line
	5550 750  5550 900 
Wire Wire Line
	6150 1500 7000 1500
Wire Wire Line
	6150 1700 6650 1700
Wire Wire Line
	6150 1800 6300 1800
$Comp
L Device:D D6
U 1 1 5E985F50
P 6300 2100
F 0 "D6" V 6254 2179 50  0000 L CNN
F 1 "ss14" V 6345 2179 50  0000 L CNN
F 2 "ArduinoDCC++:D_Sub_SMA" H 6300 2100 50  0001 C CNN
F 3 "~" H 6300 2100 50  0001 C CNN
	1    6300 2100
	0    1    1    0   
$EndComp
$Comp
L Device:D D8
U 1 1 5E985F5A
P 6650 2100
F 0 "D8" V 6604 2179 50  0000 L CNN
F 1 "ss14" V 6695 2179 50  0000 L CNN
F 2 "ArduinoDCC++:D_Sub_SMA" H 6650 2100 50  0001 C CNN
F 3 "~" H 6650 2100 50  0001 C CNN
	1    6650 2100
	0    1    1    0   
$EndComp
$Comp
L Device:D D10
U 1 1 5E985F64
P 7000 2100
F 0 "D10" V 6954 2179 50  0000 L CNN
F 1 "ss14" V 7045 2179 50  0000 L CNN
F 2 "ArduinoDCC++:D_Sub_SMA" H 7000 2100 50  0001 C CNN
F 3 "~" H 7000 2100 50  0001 C CNN
	1    7000 2100
	0    1    1    0   
$EndComp
$Comp
L Device:D D12
U 1 1 5E985F6E
P 7350 2100
F 0 "D12" V 7304 2179 50  0000 L CNN
F 1 "ss14" V 7395 2179 50  0000 L CNN
F 2 "ArduinoDCC++:D_Sub_SMA" H 7350 2100 50  0001 C CNN
F 3 "~" H 7350 2100 50  0001 C CNN
	1    7350 2100
	0    1    1    0   
$EndComp
$Comp
L Device:D D11
U 1 1 5E9834E4
P 7350 1150
F 0 "D11" V 7304 1229 50  0000 L CNN
F 1 "ss14" V 7395 1229 50  0000 L CNN
F 2 "ArduinoDCC++:D_Sub_SMA" H 7350 1150 50  0001 C CNN
F 3 "~" H 7350 1150 50  0001 C CNN
	1    7350 1150
	0    1    1    0   
$EndComp
$Comp
L Device:D D9
U 1 1 5E9832D0
P 7000 1150
F 0 "D9" V 6954 1229 50  0000 L CNN
F 1 "ss14" V 7045 1229 50  0000 L CNN
F 2 "ArduinoDCC++:D_Sub_SMA" H 7000 1150 50  0001 C CNN
F 3 "~" H 7000 1150 50  0001 C CNN
	1    7000 1150
	0    1    1    0   
$EndComp
$Comp
L Device:D D7
U 1 1 5E982EBF
P 6650 1150
F 0 "D7" V 6604 1229 50  0000 L CNN
F 1 "ss14" V 6695 1229 50  0000 L CNN
F 2 "ArduinoDCC++:D_Sub_SMA" H 6650 1150 50  0001 C CNN
F 3 "~" H 6650 1150 50  0001 C CNN
	1    6650 1150
	0    1    1    0   
$EndComp
$Comp
L Device:D D5
U 1 1 5E98277A
P 6300 1150
F 0 "D5" V 6254 1229 50  0000 L CNN
F 1 "ss14" V 6345 1229 50  0000 L CNN
F 2 "ArduinoDCC++:D_Sub_SMA" H 6300 1150 50  0001 C CNN
F 3 "~" H 6300 1150 50  0001 C CNN
	1    6300 1150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5E993F5E
P 6800 2550
F 0 "#PWR016" H 6800 2300 50  0001 C CNN
F 1 "GND" H 6805 2377 50  0000 C CNN
F 2 "" H 6800 2550 50  0001 C CNN
F 3 "" H 6800 2550 50  0001 C CNN
	1    6800 2550
	1    0    0    -1  
$EndComp
Text Label 6850 700  0    50   ~ 0
VMot
Wire Wire Line
	6850 700  6850 850 
Wire Wire Line
	6850 850  7000 850 
Wire Wire Line
	7350 850  7350 1000
Wire Wire Line
	7350 2250 7350 2450
Wire Wire Line
	7350 2450 7000 2450
Wire Wire Line
	6800 2450 6800 2550
Wire Wire Line
	7000 2250 7000 2450
Connection ~ 7000 2450
Wire Wire Line
	7000 2450 6800 2450
Wire Wire Line
	6650 2250 6650 2450
Wire Wire Line
	6650 2450 6800 2450
Connection ~ 6800 2450
Wire Wire Line
	6300 2250 6300 2450
Wire Wire Line
	6300 2450 6650 2450
Connection ~ 6650 2450
Wire Wire Line
	7350 1300 7350 1400
Connection ~ 7350 1400
Wire Wire Line
	7350 1400 6150 1400
Wire Wire Line
	7350 1400 7350 1950
Wire Wire Line
	7000 1300 7000 1500
Connection ~ 7000 1500
Wire Wire Line
	7000 1500 7000 1950
Wire Wire Line
	6650 1950 6650 1700
Connection ~ 6650 1700
Wire Wire Line
	6650 1700 6650 1300
Wire Wire Line
	6300 1950 6300 1800
Connection ~ 6300 1800
Wire Wire Line
	6300 1300 6300 1800
Wire Wire Line
	6300 1000 6300 850 
Wire Wire Line
	6300 850  6650 850 
Connection ~ 6850 850 
Wire Wire Line
	6650 1000 6650 850 
Connection ~ 6650 850 
Wire Wire Line
	6650 850  6850 850 
Wire Wire Line
	7000 1000 7000 850 
Connection ~ 7000 850 
Wire Wire Line
	7000 850  7350 850 
$Comp
L Amplifier_Operational:LMV358 U1
U 1 1 5EA03083
P 1800 3450
F 0 "U1" H 1800 3817 50  0000 C CNN
F 1 "LMV358" H 1800 3726 50  0000 C CNN
F 2 "ArduinoDCC++:SOIC-8_3.9x4.9mm_P1.27mm" H 1800 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lmv324.pdf" H 1800 3450 50  0001 C CNN
	1    1800 3450
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LMV358 U1
U 2 1 5EA04DF6
P 1800 4400
F 0 "U1" H 1800 4767 50  0000 C CNN
F 1 "LMV358" H 1800 4676 50  0000 C CNN
F 2 "ArduinoDCC++:SOIC-8_3.9x4.9mm_P1.27mm" H 1800 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lmv324.pdf" H 1800 4400 50  0001 C CNN
	2    1800 4400
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LMV358 U1
U 3 1 5EA064F0
P 9200 3000
F 0 "U1" H 9158 3046 50  0000 L CNN
F 1 "LMV358" H 9158 2955 50  0000 L CNN
F 2 "ArduinoDCC++:SOIC-8_3.9x4.9mm_P1.27mm" H 9200 3000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lmv324.pdf" H 9200 3000 50  0001 C CNN
	3    9200 3000
	1    0    0    -1  
$EndComp
Text Label 5150 2450 2    50   ~ 0
snsA
Text Label 5250 2450 0    50   ~ 0
snsB
Wire Wire Line
	5250 2450 5250 2300
Wire Wire Line
	5150 2300 5150 2450
$Comp
L Device:R R?
U 1 1 5EA29214
P 1800 3800
AR Path="/5E94B185/5EA29214" Ref="R?"  Part="1" 
AR Path="/5E983A86/5EA29214" Ref="R15"  Part="1" 
AR Path="/5EDE30E5/5EA29214" Ref="R10"  Part="1" 
F 0 "R10" V 1593 3800 50  0000 C CNN
F 1 "10K" V 1684 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1730 3800 50  0001 C CNN
F 3 "~" H 1800 3800 50  0001 C CNN
	1    1800 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EA348C8
P 1150 3550
AR Path="/5E94B185/5EA348C8" Ref="R?"  Part="1" 
AR Path="/5E983A86/5EA348C8" Ref="R12"  Part="1" 
AR Path="/5EDE30E5/5EA348C8" Ref="R5"  Part="1" 
F 0 "R5" V 943 3550 50  0000 C CNN
F 1 "1K" V 1034 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1080 3550 50  0001 C CNN
F 3 "~" H 1150 3550 50  0001 C CNN
	1    1150 3550
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EA37F7C
P 1150 4500
AR Path="/5E94B185/5EA37F7C" Ref="R?"  Part="1" 
AR Path="/5E983A86/5EA37F7C" Ref="R13"  Part="1" 
AR Path="/5EDE30E5/5EA37F7C" Ref="R6"  Part="1" 
F 0 "R6" V 943 4500 50  0000 C CNN
F 1 "1K" V 1034 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1080 4500 50  0001 C CNN
F 3 "~" H 1150 4500 50  0001 C CNN
	1    1150 4500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EA439EF
P 1750 4850
AR Path="/5E94B185/5EA439EF" Ref="R?"  Part="1" 
AR Path="/5E983A86/5EA439EF" Ref="R14"  Part="1" 
AR Path="/5EDE30E5/5EA439EF" Ref="R9"  Part="1" 
F 0 "R9" V 1543 4850 50  0000 C CNN
F 1 "10K" V 1634 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1680 4850 50  0001 C CNN
F 3 "~" H 1750 4850 50  0001 C CNN
	1    1750 4850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5EA43F96
P 800 4950
F 0 "#PWR07" H 800 4700 50  0001 C CNN
F 1 "GND" H 805 4777 50  0000 C CNN
F 2 "" H 800 4950 50  0001 C CNN
F 3 "" H 800 4950 50  0001 C CNN
	1    800  4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5EA44706
P 9100 3400
F 0 "#PWR019" H 9100 3150 50  0001 C CNN
F 1 "GND" H 9105 3227 50  0000 C CNN
F 2 "" H 9100 3400 50  0001 C CNN
F 3 "" H 9100 3400 50  0001 C CNN
	1    9100 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR018
U 1 1 5EA4583E
P 9100 2550
F 0 "#PWR018" H 9100 2400 50  0001 C CNN
F 1 "+5V" H 9115 2723 50  0000 C CNN
F 2 "" H 9100 2550 50  0001 C CNN
F 3 "" H 9100 2550 50  0001 C CNN
	1    9100 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 2550 9100 2650
Wire Wire Line
	9100 3300 9100 3350
Wire Wire Line
	1000 3550 800  3550
Wire Wire Line
	800  3550 800  4500
Wire Wire Line
	1000 4500 800  4500
Connection ~ 800  4500
Wire Wire Line
	800  4500 800  4950
Wire Wire Line
	1300 3550 1350 3550
Wire Wire Line
	1650 3800 1350 3800
Wire Wire Line
	1350 3800 1350 3550
Connection ~ 1350 3550
Wire Wire Line
	1350 3550 1500 3550
Wire Wire Line
	1950 3800 2200 3800
Wire Wire Line
	2200 3800 2200 3450
Wire Wire Line
	2200 3450 2100 3450
Wire Wire Line
	1300 4500 1400 4500
Wire Wire Line
	1600 4850 1400 4850
Wire Wire Line
	1400 4850 1400 4500
Connection ~ 1400 4500
Wire Wire Line
	1400 4500 1500 4500
Wire Wire Line
	1900 4850 2200 4850
Wire Wire Line
	2200 4850 2200 4400
Wire Wire Line
	2200 4400 2100 4400
Text HLabel 2450 3450 2    50   Output ~ 0
Sns_A
Text HLabel 2450 4400 2    50   Output ~ 0
Sns_B
Wire Wire Line
	2450 3450 2200 3450
Connection ~ 2200 3450
Wire Wire Line
	2450 4400 2200 4400
Connection ~ 2200 4400
Text Label 1250 4150 2    50   ~ 0
snsB
Text Label 1250 3200 2    50   ~ 0
snsA
Wire Wire Line
	1250 3200 1250 3350
Wire Wire Line
	1250 3350 1500 3350
Wire Wire Line
	1250 4150 1250 4300
Wire Wire Line
	1250 4300 1500 4300
$Comp
L Device:R R?
U 1 1 5EA8A80F
P 5150 2600
AR Path="/5E94B185/5EA8A80F" Ref="R?"  Part="1" 
AR Path="/5E983A86/5EA8A80F" Ref="R16"  Part="1" 
AR Path="/5EDE30E5/5EA8A80F" Ref="R11"  Part="1" 
F 0 "R11" V 4943 2600 50  0000 C CNN
F 1 "0R15" V 5034 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5080 2600 50  0001 C CNN
F 3 "~" H 5150 2600 50  0001 C CNN
	1    5150 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EA8AF80
P 5250 2600
AR Path="/5E94B185/5EA8AF80" Ref="R?"  Part="1" 
AR Path="/5E983A86/5EA8AF80" Ref="R17"  Part="1" 
AR Path="/5EDE30E5/5EA8AF80" Ref="R12"  Part="1" 
F 0 "R12" V 5450 2600 50  0000 C CNN
F 1 "0R15" V 5350 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5180 2600 50  0001 C CNN
F 3 "~" H 5250 2600 50  0001 C CNN
	1    5250 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5EA8EEF9
P 5200 2850
F 0 "#PWR010" H 5200 2600 50  0001 C CNN
F 1 "GND" H 5205 2677 50  0000 C CNN
F 2 "" H 5200 2850 50  0001 C CNN
F 3 "" H 5200 2850 50  0001 C CNN
	1    5200 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2750 5150 2850
Wire Wire Line
	5150 2850 5200 2850
Wire Wire Line
	5200 2850 5250 2850
Wire Wire Line
	5250 2850 5250 2750
Connection ~ 5200 2850
$Comp
L Device:C C?
U 1 1 5EAC689E
P 9600 3000
AR Path="/5E94B185/5EAC689E" Ref="C?"  Part="1" 
AR Path="/5E983A86/5EAC689E" Ref="C10"  Part="1" 
AR Path="/5EDE30E5/5EAC689E" Ref="C8"  Part="1" 
F 0 "C8" H 9715 3046 50  0000 L CNN
F 1 "100nF" H 9715 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9638 2850 50  0001 C CNN
F 3 "~" H 9600 3000 50  0001 C CNN
	1    9600 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3150 9600 3350
Wire Wire Line
	9600 3350 9100 3350
Connection ~ 9100 3350
Wire Wire Line
	9100 3350 9100 3400
Wire Wire Line
	9600 2850 9600 2650
Wire Wire Line
	9600 2650 9100 2650
Connection ~ 9100 2650
Wire Wire Line
	9100 2650 9100 2700
$Comp
L 4xxx:4077 U2
U 1 1 5E976BF9
P 2250 1000
F 0 "U2" H 2250 1325 50  0000 C CNN
F 1 "4077" H 2250 1234 50  0000 C CNN
F 2 "ArduinoDCC++:SOIC-14_3.9x8.7mm_P1.27mm" H 2250 1000 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4076bms.pdf" H 2250 1000 50  0001 C CNN
	1    2250 1000
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4077 U2
U 2 1 5E978ECA
P 10600 1250
F 0 "U2" H 10600 1575 50  0000 C CNN
F 1 "4077" H 10600 1484 50  0000 C CNN
F 2 "ArduinoDCC++:SOIC-14_3.9x8.7mm_P1.27mm" H 10600 1250 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4076bms.pdf" H 10600 1250 50  0001 C CNN
	2    10600 1250
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4077 U2
U 3 1 5E97D434
P 10600 1700
F 0 "U2" H 10600 2025 50  0000 C CNN
F 1 "4077" H 10600 1934 50  0000 C CNN
F 2 "ArduinoDCC++:SOIC-14_3.9x8.7mm_P1.27mm" H 10600 1700 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4076bms.pdf" H 10600 1700 50  0001 C CNN
	3    10600 1700
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4077 U2
U 4 1 5E9822D2
P 2250 1500
F 0 "U2" H 2250 1825 50  0000 C CNN
F 1 "4077" H 2250 1734 50  0000 C CNN
F 2 "ArduinoDCC++:SOIC-14_3.9x8.7mm_P1.27mm" H 2250 1500 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4076bms.pdf" H 2250 1500 50  0001 C CNN
	4    2250 1500
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4077 U2
U 5 1 5E984672
P 9500 1450
F 0 "U2" H 9730 1496 50  0000 L CNN
F 1 "4077" H 9730 1405 50  0000 L CNN
F 2 "ArduinoDCC++:SOIC-14_3.9x8.7mm_P1.27mm" H 9500 1450 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4076bms.pdf" H 9500 1450 50  0001 C CNN
	5    9500 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5E986523
P 9500 2050
F 0 "#PWR021" H 9500 1800 50  0001 C CNN
F 1 "GND" H 9505 1877 50  0000 C CNN
F 2 "" H 9500 2050 50  0001 C CNN
F 3 "" H 9500 2050 50  0001 C CNN
	1    9500 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 5E986A46
P 9500 800
F 0 "#PWR020" H 9500 650 50  0001 C CNN
F 1 "+5V" H 9515 973 50  0000 C CNN
F 2 "" H 9500 800 50  0001 C CNN
F 3 "" H 9500 800 50  0001 C CNN
	1    9500 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5E98E632
P 10200 1950
F 0 "#PWR023" H 10200 1700 50  0001 C CNN
F 1 "GND" H 10205 1777 50  0000 C CNN
F 2 "" H 10200 1950 50  0001 C CNN
F 3 "" H 10200 1950 50  0001 C CNN
	1    10200 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR022
U 1 1 5E98EA78
P 10200 850
F 0 "#PWR022" H 10200 700 50  0001 C CNN
F 1 "+5V" H 10215 1023 50  0000 C CNN
F 2 "" H 10200 850 50  0001 C CNN
F 3 "" H 10200 850 50  0001 C CNN
	1    10200 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E98ED33
P 9050 1450
AR Path="/5E94B185/5E98ED33" Ref="C?"  Part="1" 
AR Path="/5E983A86/5E98ED33" Ref="C17"  Part="1" 
AR Path="/5EDE30E5/5E98ED33" Ref="C7"  Part="1" 
F 0 "C7" H 9165 1496 50  0000 L CNN
F 1 "100nF" H 9165 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9088 1300 50  0001 C CNN
F 3 "~" H 9050 1450 50  0001 C CNN
	1    9050 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 800  9500 900 
Wire Wire Line
	9050 1300 9050 900 
Wire Wire Line
	9050 900  9500 900 
Connection ~ 9500 900 
Wire Wire Line
	9500 900  9500 950 
Wire Wire Line
	9050 1600 9050 2000
Wire Wire Line
	9050 2000 9500 2000
Wire Wire Line
	9500 2000 9500 2050
Wire Wire Line
	9500 1950 9500 2000
Connection ~ 9500 2000
Wire Wire Line
	10200 850  10200 1150
Wire Wire Line
	10200 1350 10300 1350
Wire Wire Line
	10300 1150 10200 1150
Connection ~ 10200 1150
Wire Wire Line
	10200 1150 10200 1350
Wire Wire Line
	10200 1950 10200 1800
Wire Wire Line
	10200 1600 10300 1600
Wire Wire Line
	10300 1800 10200 1800
Connection ~ 10200 1800
Wire Wire Line
	10200 1800 10200 1600
Text Label 2650 1000 0    50   ~ 0
dirA#
Text Label 2650 1500 0    50   ~ 0
dirB#
Wire Wire Line
	2650 1500 2550 1500
Wire Wire Line
	2550 1000 2650 1000
Text Label 4700 1200 2    50   ~ 0
dirA#
Text Label 4700 1600 2    50   ~ 0
dirB#
Wire Wire Line
	4700 1600 4950 1600
Wire Wire Line
	4700 1200 4950 1200
Text Label 4700 1100 2    50   ~ 0
dirA
Wire Wire Line
	4700 1100 4950 1100
Text Label 4700 1500 2    50   ~ 0
dirB
Wire Wire Line
	4700 1500 4950 1500
Text Label 1650 900  2    50   ~ 0
dirA
Text Label 1650 1400 2    50   ~ 0
dirB
Text Label 1650 1100 2    50   ~ 0
brakeA
Text Label 1600 1600 2    50   ~ 0
brakeB
Text HLabel 1100 1600 0    50   Input ~ 0
Brake_B
Wire Wire Line
	1100 1600 1750 1600
Text HLabel 1100 1400 0    50   Input ~ 0
DCC_B
Wire Wire Line
	1100 1400 1950 1400
Text HLabel 1050 1100 0    50   Input ~ 0
Brake_A
Text HLabel 1050 900  0    50   Input ~ 0
DCC_A
Wire Wire Line
	1050 900  1950 900 
Wire Wire Line
	1050 1100 1300 1100
$Comp
L Device:R R?
U 1 1 5EA16C11
P 1300 1850
AR Path="/5E94B185/5EA16C11" Ref="R?"  Part="1" 
AR Path="/5E983A86/5EA16C11" Ref="R10"  Part="1" 
AR Path="/5EDE30E5/5EA16C11" Ref="R7"  Part="1" 
F 0 "R7" V 1093 1850 50  0000 C CNN
F 1 "10K" V 1184 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1230 1850 50  0001 C CNN
F 3 "~" H 1300 1850 50  0001 C CNN
	1    1300 1850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5EA17551
P 1750 1850
AR Path="/5E94B185/5EA17551" Ref="R?"  Part="1" 
AR Path="/5E983A86/5EA17551" Ref="R11"  Part="1" 
AR Path="/5EDE30E5/5EA17551" Ref="R8"  Part="1" 
F 0 "R8" V 1543 1850 50  0000 C CNN
F 1 "10K" V 1634 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1680 1850 50  0001 C CNN
F 3 "~" H 1750 1850 50  0001 C CNN
	1    1750 1850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5EA17AEB
P 1550 2150
F 0 "#PWR08" H 1550 1900 50  0001 C CNN
F 1 "GND" H 1555 1977 50  0000 C CNN
F 2 "" H 1550 2150 50  0001 C CNN
F 3 "" H 1550 2150 50  0001 C CNN
	1    1550 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2000 1300 2100
Wire Wire Line
	1300 2100 1550 2100
Wire Wire Line
	1750 2000 1750 2100
Wire Wire Line
	1750 2100 1550 2100
Connection ~ 1550 2100
Wire Wire Line
	1550 2150 1550 2100
Wire Wire Line
	1750 1700 1750 1600
Connection ~ 1750 1600
Wire Wire Line
	1750 1600 1950 1600
Wire Wire Line
	1300 1700 1300 1100
Connection ~ 1300 1100
Wire Wire Line
	1300 1100 1950 1100
Text HLabel 4700 1300 0    50   Input ~ 0
en_A
Text HLabel 4700 1700 0    50   Input ~ 0
en_B
Wire Wire Line
	4700 1700 4950 1700
Wire Wire Line
	4950 1300 4700 1300
$Comp
L Device:C C?
U 1 1 5EA4A635
P 4950 750
AR Path="/5E94B185/5EA4A635" Ref="C?"  Part="1" 
AR Path="/5E983A86/5EA4A635" Ref="C11"  Part="1" 
AR Path="/5EDE30E5/5EA4A635" Ref="C1"  Part="1" 
F 0 "C1" H 5065 796 50  0000 L CNN
F 1 "100nF" H 5065 705 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4988 600 50  0001 C CNN
F 3 "~" H 4950 750 50  0001 C CNN
	1    4950 750 
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 750  5100 750 
Connection ~ 5250 750 
$Comp
L power:GND #PWR09
U 1 1 5EA5213D
P 4500 750
F 0 "#PWR09" H 4500 500 50  0001 C CNN
F 1 "GND" H 4505 577 50  0000 C CNN
F 2 "" H 4500 750 50  0001 C CNN
F 3 "" H 4500 750 50  0001 C CNN
	1    4500 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 750  4800 750 
$Comp
L power:+5V #PWR012
U 1 1 5EA59C18
P 5300 3600
F 0 "#PWR012" H 5300 3450 50  0001 C CNN
F 1 "+5V" H 5315 3773 50  0000 C CNN
F 2 "" H 5300 3600 50  0001 C CNN
F 3 "" H 5300 3600 50  0001 C CNN
	1    5300 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5EA59E2B
P 5300 4200
F 0 "#PWR013" H 5300 3950 50  0001 C CNN
F 1 "GND" H 5305 4027 50  0000 C CNN
F 2 "" H 5300 4200 50  0001 C CNN
F 3 "" H 5300 4200 50  0001 C CNN
	1    5300 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EA5A5A1
P 5550 3900
AR Path="/5E94B185/5EA5A5A1" Ref="C?"  Part="1" 
AR Path="/5E983A86/5EA5A5A1" Ref="C13"  Part="1" 
AR Path="/5EDE30E5/5EA5A5A1" Ref="C3"  Part="1" 
F 0 "C3" H 5665 3946 50  0000 L CNN
F 1 "100nF" H 5665 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5588 3750 50  0001 C CNN
F 3 "~" H 5550 3900 50  0001 C CNN
	1    5550 3900
	-1   0    0    1   
$EndComp
Text Label 6900 3550 0    50   ~ 0
VMot
$Comp
L power:GND #PWR017
U 1 1 5EA5AE4B
P 6900 4250
F 0 "#PWR017" H 6900 4000 50  0001 C CNN
F 1 "GND" H 6905 4077 50  0000 C CNN
F 2 "" H 6900 4250 50  0001 C CNN
F 3 "" H 6900 4250 50  0001 C CNN
	1    6900 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EA5B25E
P 5100 3900
AR Path="/5E94B185/5EA5B25E" Ref="C?"  Part="1" 
AR Path="/5E983A86/5EA5B25E" Ref="C12"  Part="1" 
AR Path="/5EDE30E5/5EA5B25E" Ref="C2"  Part="1" 
F 0 "C2" H 5215 3946 50  0000 L CNN
F 1 "10uF 35V" H 5215 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5138 3750 50  0001 C CNN
F 3 "~" H 5100 3900 50  0001 C CNN
	1    5100 3900
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5EA5BB3C
P 6900 3900
AR Path="/5E94B185/5EA5BB3C" Ref="C?"  Part="1" 
AR Path="/5E983A86/5EA5BB3C" Ref="C15"  Part="1" 
AR Path="/5EDE30E5/5EA5BB3C" Ref="C5"  Part="1" 
F 0 "C5" H 7015 3946 50  0000 L CNN
F 1 "10uF 35V" H 7015 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6938 3750 50  0001 C CNN
F 3 "~" H 6900 3900 50  0001 C CNN
	1    6900 3900
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5EA5BFD7
P 6300 3900
AR Path="/5E94B185/5EA5BFD7" Ref="C?"  Part="1" 
AR Path="/5E983A86/5EA5BFD7" Ref="C14"  Part="1" 
AR Path="/5EDE30E5/5EA5BFD7" Ref="C4"  Part="1" 
F 0 "C4" H 6415 3946 50  0000 L CNN
F 1 "10uF 35V" H 6415 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6338 3750 50  0001 C CNN
F 3 "~" H 6300 3900 50  0001 C CNN
	1    6300 3900
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5EA5C59D
P 7500 3900
AR Path="/5E94B185/5EA5C59D" Ref="C?"  Part="1" 
AR Path="/5E983A86/5EA5C59D" Ref="C16"  Part="1" 
AR Path="/5EDE30E5/5EA5C59D" Ref="C6"  Part="1" 
F 0 "C6" H 7615 3946 50  0000 L CNN
F 1 "10uF 35V" H 7615 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7538 3750 50  0001 C CNN
F 3 "~" H 7500 3900 50  0001 C CNN
	1    7500 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 3600 5300 3700
Wire Wire Line
	5300 3700 5550 3700
Wire Wire Line
	5550 3700 5550 3750
Wire Wire Line
	5300 3700 5100 3700
Wire Wire Line
	5100 3700 5100 3750
Connection ~ 5300 3700
Wire Wire Line
	5100 4050 5100 4150
Wire Wire Line
	5100 4150 5300 4150
Wire Wire Line
	5300 4150 5300 4200
Wire Wire Line
	5550 4050 5550 4150
Wire Wire Line
	5550 4150 5300 4150
Connection ~ 5300 4150
Wire Wire Line
	6900 3550 6900 3600
Wire Wire Line
	6900 3600 7500 3600
Wire Wire Line
	7500 3600 7500 3750
Wire Wire Line
	6900 3600 6900 3750
Connection ~ 6900 3600
Wire Wire Line
	6900 3600 6300 3600
Wire Wire Line
	6300 3600 6300 3750
Wire Wire Line
	6300 4050 6300 4200
Wire Wire Line
	6300 4200 6900 4200
Wire Wire Line
	7500 4200 7500 4050
Wire Wire Line
	6900 4050 6900 4200
Connection ~ 6900 4200
Wire Wire Line
	6900 4200 7500 4200
Wire Wire Line
	6900 4200 6900 4250
Text Notes 3150 1350 0    50   ~ 0
B|D|O\n-------\n0|0|1 Motor Run\n0|1|0\n-------\n1|0|0 Motor Stop\n1|1|1
NoConn ~ 10900 1700
NoConn ~ 10900 1250
Text HLabel 5850 750  2    50   Input ~ 0
V_DCC
Text HLabel 7950 1400 2    50   Output ~ 0
Out_A_J
Text HLabel 7950 1500 2    50   Output ~ 0
Out_A_K
Text HLabel 7950 1700 2    50   Output ~ 0
Out_B_J
Text HLabel 7950 1800 2    50   Output ~ 0
Out_B_K
Wire Wire Line
	7350 1400 7950 1400
Wire Wire Line
	7950 1500 7000 1500
Wire Wire Line
	6650 1700 7950 1700
Wire Wire Line
	6300 1800 7950 1800
Wire Notes Line
	500  2800 4000 2800
Wire Notes Line
	500  5500 4000 5500
Wire Notes Line
	4000 3200 8400 3200
Wire Notes Line
	8400 4000 11200 4000
Wire Notes Line
	4000 500  4000 5500
Wire Notes Line
	8400 4700 4000 4700
Wire Notes Line
	8400 500  8400 4700
Text Notes 3350 2650 0    50   ~ 0
Brake Control
Text Notes 7450 3050 0    50   ~ 0
Main System
Text Notes 10750 3900 0    50   ~ 0
IC Power
Text Notes 7400 4600 0    50   ~ 0
Bypass Caps (General)
$Comp
L power:+5V #PWR015
U 1 1 5F036F6D
P 6300 2950
F 0 "#PWR015" H 6300 2800 50  0001 C CNN
F 1 "+5V" H 6315 3123 50  0000 C CNN
F 2 "" H 6300 2950 50  0001 C CNN
F 3 "" H 6300 2950 50  0001 C CNN
	1    6300 2950
	1    0    0    -1  
$EndComp
Text HLabel 6500 3050 2    50   Input ~ 0
V_CTRL
Wire Wire Line
	6300 2950 6300 3050
Wire Wire Line
	6300 3050 6500 3050
Text Notes 1200 7200 0    50   ~ 0
V_DCC   <- Potencia a las Vias\nV_CTRL  <- Voltaje de Control\nDCC_X  <- Señal DCC Canal X\nEn_X    <- Habilitacion Canal X\nBrake_X <- Frenado X (ambas vias al mismo Voltaje)\nSns_X   -> Consumo Canal X\nOut_X_J -> Via J del Canal X\nOut_X_K -> Via K del Canal X
Text Notes 3650 7200 0    50   ~ 0
DCC_A  <- 10 (PB2)\nEn_A    <- 3 (PD3)\nBrake_A <- 9 (PB1)\nSns_A   -> A0 (PC0)\n\nDCC_B  <- 5 (PD5)\nEn_B    <- 11 (PB3)\nBrake_B <-  8 (PB0)\nSns_B   -> A1 (PC1)
$EndSCHEMATC
