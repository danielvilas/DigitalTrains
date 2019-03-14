EESchema Schematic File Version 4
LIBS:Breaker_v3.0-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4200 1350 0    50   Input ~ 0
Vin
Text HLabel 5150 1350 2    50   Output ~ 0
Vout
Text HLabel 3000 2750 0    50   Input ~ 0
status
Text HLabel 3000 2550 0    50   Input ~ 0
ctrl_ref
$Comp
L Breaker_v3.0-rescue:IRF9520PBF-Breaker_custom Q1
U 1 1 5C3E5278
P 4750 1450
AR Path="/5C3E5278" Ref="Q1"  Part="1" 
AR Path="/5C3E0F17/5C3E5278" Ref="Q1"  Part="1" 
F 0 "Q1" V 5093 1450 50  0000 C CNN
F 1 "IRF9520PBF" V 5002 1450 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4950 1375 50  0001 L CIN
F 3 "https://www.vishay.com/docs/91074/91074.pdf" V 4750 1450 50  0001 L CNN
	1    4750 1450
	0    1    -1   0   
$EndComp
Wire Wire Line
	4950 1350 5150 1350
$Comp
L Device:R R5
U 1 1 5C3E5356
P 4450 1650
F 0 "R5" H 4520 1696 50  0000 L CNN
F 1 "1K" H 4520 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4380 1650 50  0001 C CNN
F 3 "~" H 4450 1650 50  0001 C CNN
	1    4450 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1500 4450 1350
Connection ~ 4450 1350
Wire Wire Line
	4450 1350 4550 1350
$Comp
L Comparator:LM339 U2
U 3 1 5C3E5444
P 3500 2650
F 0 "U2" H 3500 3017 50  0000 C CNN
F 1 "LM339" H 3500 2926 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 3450 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 3550 2850 50  0001 C CNN
	3    3500 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2650 4750 2650
Wire Wire Line
	4750 2650 4750 2050
Wire Wire Line
	4450 1800 4450 2050
Wire Wire Line
	4450 2050 4750 2050
Connection ~ 4750 2050
Wire Wire Line
	4750 2050 4750 1650
Wire Wire Line
	4200 1350 4450 1350
Wire Wire Line
	3000 2750 3200 2750
Wire Wire Line
	3200 2550 3000 2550
Text Notes 800  1700 0    50   ~ 0
status (VCC) > ctrl_ref :\n     current flows, opening the P Channel of the Mosfet, so Vout = Vin\n\nstatus(gnd)< ctrl_ref:\n    Current blocked, Gate = Vin, Mosfet closed, Vout =0 (Iout ===0)
$EndSCHEMATC
