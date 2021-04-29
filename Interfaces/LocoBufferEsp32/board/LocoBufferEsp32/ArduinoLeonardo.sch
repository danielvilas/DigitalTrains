EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title "Dcc Decoder Devel Board"
Date "2021-03-31"
Rev "1.0.0"
Comp "Daniel Vilas"
Comment1 "Check Crystal "
Comment2 "Inductor for AVCC"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RF_Module:ESP32-WROOM-32D U?
U 1 1 6088F894
P 2600 2700
F 0 "U?" H 2600 4281 50  0000 C CNN
F 1 "ESP32-WROOM-32D" H 2600 4190 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 2600 1200 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 2300 2750 50  0001 C CNN
F 4 "C473012" H 2600 2700 50  0001 C CNN "LCSC"
	1    2600 2700
	1    0    0    -1  
$EndComp
NoConn ~ 4600 2650
Text HLabel 4600 2650 0    50   BiDi ~ 0
ap_aref
NoConn ~ 6100 3000
NoConn ~ 6100 3300
NoConn ~ 6100 4100
NoConn ~ 6100 4700
NoConn ~ 6100 4800
Text HLabel 4650 2300 0    50   BiDi ~ 0
RESET
Text Label 4900 2300 2    50   ~ 0
rst
Wire Wire Line
	4650 2300 4900 2300
Text Label 6100 2300 2    50   ~ 0
rxLed
Text Label 6100 2400 2    50   ~ 0
sck
Text Label 6100 2500 2    50   ~ 0
mosi
Text Label 6100 2600 2    50   ~ 0
miso
Text Label 6100 2700 2    50   ~ 0
D8
Text Label 6100 2800 2    50   ~ 0
D9
Text Label 6100 2900 2    50   ~ 0
D10
Text Label 6100 3200 2    50   ~ 0
D5
Text Label 6100 3500 2    50   ~ 0
D3
Text Label 6100 3600 2    50   ~ 0
D2
Text Label 6100 3700 0    50   ~ 0
RXI
Text Label 6100 4000 2    50   ~ 0
txLed
Text Label 6100 5200 2    50   ~ 0
A0
Text Label 6100 5100 2    50   ~ 0
A1
Text Label 6100 5000 2    50   ~ 0
A2
Text Label 6100 4900 2    50   ~ 0
A3
Text Label 6100 4500 2    50   ~ 0
D7
Text Label 6100 4200 2    50   ~ 0
D6
Text Label 6100 3900 2    50   ~ 0
D4
Text HLabel 6350 4000 2    50   BiDi ~ 0
PD5_D18_TXLED
Text HLabel 6350 2300 2    50   BiDi ~ 0
PB0_D17_SS_RXLED
Text HLabel 6350 2500 2    50   BiDi ~ 0
PB2_D16_MOSI
Text HLabel 6350 2400 2    50   BiDi ~ 0
PB1_D15_SCK
Text HLabel 6350 2600 2    50   BiDi ~ 0
PB3_D14_MISO
Wire Wire Line
	6100 4500 6350 4500
Wire Wire Line
	6350 3000 6100 3000
Wire Wire Line
	6350 2900 6100 2900
Wire Wire Line
	6350 3300 6100 3300
Wire Wire Line
	6350 3200 6100 3200
Text Label 6100 3800 0    50   ~ 0
TXO
Wire Wire Line
	6100 5100 6350 5100
Text HLabel 6350 4800 2    50   BiDi ~ 0
PF1_A4
Text HLabel 6350 4900 2    50   BiDi ~ 0
PF4_A3
Wire Wire Line
	6100 3800 6350 3800
Wire Wire Line
	6100 4100 6350 4100
Wire Wire Line
	6100 4200 6350 4200
Wire Wire Line
	6100 2300 6350 2300
Wire Wire Line
	6100 2400 6350 2400
Wire Wire Line
	6100 2500 6350 2500
Wire Wire Line
	6100 2600 6350 2600
Wire Wire Line
	6100 2700 6350 2700
Wire Wire Line
	6100 2800 6350 2800
Wire Wire Line
	6100 3900 6350 3900
Wire Wire Line
	6100 4700 6350 4700
Wire Wire Line
	6100 4800 6350 4800
Wire Wire Line
	6100 4900 6350 4900
Wire Wire Line
	6100 5000 6350 5000
Wire Wire Line
	6100 5200 6350 5200
Wire Wire Line
	6350 3500 6100 3500
Wire Wire Line
	6350 3600 6100 3600
Wire Wire Line
	6100 3700 6350 3700
Wire Wire Line
	6100 4000 6350 4000
Text HLabel 6350 5200 2    50   BiDi ~ 0
PF7_A0
Text HLabel 6350 5100 2    50   BiDi ~ 0
PF6_A1
Text HLabel 6350 5000 2    50   BiDi ~ 0
PF5_A2
Text HLabel 6350 4700 2    50   BiDi ~ 0
PF0_A5
Text HLabel 6350 3300 2    50   BiDi ~ 0
PC7_D13
Text HLabel 6350 4100 2    50   BiDi ~ 0
PB6_D12
Text HLabel 6350 3000 2    50   BiDi ~ 0
PB7_D11
Text HLabel 6350 2900 2    50   BiDi ~ 0
PB6_D10
Text HLabel 6350 2800 2    50   BiDi ~ 0
PB5_D9_A8
Text HLabel 6350 4500 2    50   BiDi ~ 0
PE6_D7
Text HLabel 6350 4200 2    50   BiDi ~ 0
PD7_D6_A7
Text HLabel 6350 3200 2    50   BiDi ~ 0
PC6_D5
Text HLabel 6350 3900 2    50   BiDi ~ 0
PD4_D4_A6_ICP
Text HLabel 6350 3500 2    50   BiDi ~ 0
PD0_D3_SCL
Text HLabel 6350 3600 2    50   BiDi ~ 0
PD1_D2_SDA
Text HLabel 6350 3800 2    50   BiDi ~ 0
PD3_D1_TX
Text HLabel 6350 3700 2    50   BiDi ~ 0
PD2_D0_RX
Text HLabel 6350 2700 2    50   BiDi ~ 0
PB4_D8
$EndSCHEMATC
