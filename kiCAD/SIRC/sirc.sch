EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:stm8
LIBS:sirc-cache
EELAYER 25 0
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
L STM8S003F3P IC1
U 1 1 554E7D83
P 6200 4650
F 0 "IC1" H 5050 5450 50  0000 L CNN
F 1 "STM8S003F3P" H 5050 5350 50  0000 L CNN
F 2 "SIRC:DIP-20__600" H 5050 3850 50  0000 L CIN
F 3 "" H 6150 4250 60  0000 C CNN
	1    6200 4650
	1    0    0    -1  
$EndComp
$Comp
L DB25 J1
U 1 1 554E7E83
P 9250 4200
F 0 "J1" H 9300 5550 70  0000 C CNN
F 1 "DB25" H 9200 2850 70  0000 C CNN
F 2 "Connect:DB25FC" H 9250 4200 60  0001 C CNN
F 3 "" H 9250 4200 60  0000 C CNN
	1    9250 4200
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 554E7F36
P 4400 2450
F 0 "#PWR01" H 4400 2300 60  0001 C CNN
F 1 "VCC" H 4400 2600 60  0000 C CNN
F 2 "" H 4400 2450 60  0000 C CNN
F 3 "" H 4400 2450 60  0000 C CNN
	1    4400 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 3100 8450 3100
Wire Wire Line
	8800 3300 8450 3300
Text Label 8500 3300 0    60   ~ 0
GND
Text Label 8500 3100 0    60   ~ 0
VCC
$Comp
L CONN_01X04 P1
U 1 1 554E8513
P 6400 2950
F 0 "P1" H 6400 3200 50  0000 C CNN
F 1 "CONN_01X04" V 6500 2950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 6400 2950 60  0001 C CNN
F 3 "" H 6400 2950 60  0000 C CNN
	1    6400 2950
	1    0    0    1   
$EndComp
$Comp
L C C1
U 1 1 554E8764
P 5250 2900
F 0 "C1" H 5250 3000 40  0000 L CNN
F 1 "C" H 5256 2815 40  0000 L CNN
F 2 "Discret:C1-1" H 5288 2750 30  0001 C CNN
F 3 "" H 5250 2900 60  0000 C CNN
	1    5250 2900
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 554E87DF
P 4850 2600
F 0 "R1" V 4930 2600 40  0000 C CNN
F 1 "R" V 4857 2601 40  0000 C CNN
F 2 "Discret:R3" V 4780 2600 30  0001 C CNN
F 3 "" H 4850 2600 30  0000 C CNN
	1    4850 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 3100 6200 3100
NoConn ~ 6200 2900
Wire Wire Line
	5750 3000 6200 3000
Wire Wire Line
	5750 3000 5750 2600
Wire Wire Line
	5750 2600 5100 2600
Wire Wire Line
	5250 2700 5250 2600
Connection ~ 5250 2600
$Comp
L GND #PWR02
U 1 1 554E8F7C
P 5250 3200
F 0 "#PWR02" H 5250 2950 60  0001 C CNN
F 1 "GND" H 5250 3050 60  0000 C CNN
F 2 "" H 5250 3200 60  0000 C CNN
F 3 "" H 5250 3200 60  0000 C CNN
	1    5250 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3100 5250 3200
Text Label 5350 3100 0    60   ~ 0
GND
Wire Wire Line
	4400 2600 4600 2600
Text Label 4450 2600 0    60   ~ 0
VCC
Wire Wire Line
	4400 2450 4400 2600
Wire Wire Line
	6200 5550 6200 5600
Wire Wire Line
	6200 5600 6450 5600
Wire Wire Line
	4900 5250 4600 5250
Text Label 4650 5250 0    60   ~ 0
VCC
Text Label 6300 5600 0    60   ~ 0
GND
Wire Bus Line
	4450 3550 4450 4850
Entry Wire Line
	4450 4850 4550 4950
Entry Wire Line
	4450 4750 4550 4850
Entry Wire Line
	4450 4650 4550 4750
Entry Wire Line
	4450 4550 4550 4650
Entry Wire Line
	4450 4450 4550 4550
Entry Wire Line
	4450 4350 4550 4450
Wire Wire Line
	4550 4450 4900 4450
Wire Wire Line
	4550 4550 4900 4550
Wire Wire Line
	4550 4650 4900 4650
Wire Wire Line
	4900 4750 4550 4750
Wire Wire Line
	4550 4850 4900 4850
Wire Wire Line
	4550 4950 4900 4950
Text Label 4600 4450 0    60   ~ 0
CMD0
Text Label 4600 4550 0    60   ~ 0
CMD1
Text Label 4600 4650 0    60   ~ 0
CMD2
Text Label 4600 4750 0    60   ~ 0
CMD3
Text Label 4600 4850 0    60   ~ 0
CMD4
Text Label 4600 4950 0    60   ~ 0
CMD5
Wire Bus Line
	8200 3550 8200 5300
Entry Wire Line
	8200 5300 8300 5400
Entry Wire Line
	8200 5100 8300 5200
Entry Wire Line
	8200 4900 8300 5000
Entry Wire Line
	8200 4700 8300 4800
Entry Wire Line
	8200 4500 8300 4600
Entry Wire Line
	8200 4300 8300 4400
Wire Wire Line
	8300 4400 8800 4400
Wire Wire Line
	8300 4600 8800 4600
Wire Wire Line
	8300 4800 8800 4800
Wire Wire Line
	8300 5000 8800 5000
Wire Wire Line
	8300 5200 8800 5200
Wire Wire Line
	8300 5400 8800 5400
Text Label 8350 5400 0    60   ~ 0
CMD0
Text Label 8350 5200 0    60   ~ 0
CMD1
Text Label 8350 5000 0    60   ~ 0
CMD2
Text Label 8350 4800 0    60   ~ 0
CMD3
Text Label 8350 4600 0    60   ~ 0
CMD4
Text Label 8350 4400 0    60   ~ 0
CMD5
Wire Bus Line
	4450 3550 8200 3550
Wire Wire Line
	7500 5150 7850 5150
Text Label 7550 5150 0    60   ~ 0
IR_OUT
Wire Wire Line
	6200 2800 5850 2800
Wire Wire Line
	5850 2800 5850 2600
Wire Wire Line
	5850 2600 7850 2600
Wire Wire Line
	7850 2600 7850 5150
NoConn ~ 7500 4150
NoConn ~ 7500 4250
NoConn ~ 7500 4350
NoConn ~ 7500 4550
NoConn ~ 7500 4650
NoConn ~ 7500 4850
NoConn ~ 7500 4950
NoConn ~ 7500 5050
NoConn ~ 7500 5250
NoConn ~ 4900 4150
NoConn ~ 6200 3850
NoConn ~ 8800 3000
NoConn ~ 8800 3200
NoConn ~ 8800 3400
NoConn ~ 8800 3500
NoConn ~ 8800 3600
NoConn ~ 8800 3700
NoConn ~ 8800 3800
NoConn ~ 8800 3900
NoConn ~ 8800 4000
NoConn ~ 8800 4100
NoConn ~ 8800 4200
NoConn ~ 8800 4300
NoConn ~ 8800 4500
NoConn ~ 8800 4700
NoConn ~ 8800 4900
NoConn ~ 8800 5100
NoConn ~ 8800 5300
$Comp
L PWR_FLAG #FLG03
U 1 1 554EC95D
P 4550 2600
F 0 "#FLG03" H 4550 2695 30  0001 C CNN
F 1 "PWR_FLAG" H 4550 2780 30  0000 C CNN
F 2 "" H 4550 2600 60  0000 C CNN
F 3 "" H 4550 2600 60  0000 C CNN
	1    4550 2600
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG04
U 1 1 554ED44A
P 5600 3000
F 0 "#FLG04" H 5600 3095 30  0001 C CNN
F 1 "PWR_FLAG" H 5600 3180 30  0000 C CNN
F 2 "" H 5600 3000 60  0000 C CNN
F 3 "" H 5600 3000 60  0000 C CNN
	1    5600 3000
	1    0    0    -1  
$EndComp
Connection ~ 4550 2600
Wire Wire Line
	5600 3000 5600 3100
Connection ~ 5600 3100
$EndSCHEMATC
