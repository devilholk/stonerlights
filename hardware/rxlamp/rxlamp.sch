EESchema Schematic File Version 2  date Tue 11 Jun 2013 02:36:35 PM CEST
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
LIBS:vreg
LIBS:stm32f100
LIBS:resistor-nets
LIBS:plcc6xrgbct
LIBS:crf
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "10 jun 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R3
U 1 1 50A1086D
P 5900 1800
F 0 "R3" V 5980 1800 50  0000 C CNN
F 1 "4.7 kΩ" V 5900 1800 50  0000 C CNN
F 2 "" H 5900 1800 60  0001 C CNN
F 3 "" H 5900 1800 60  0001 C CNN
	1    5900 1800
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR8
U 1 1 50A10939
P 6200 1850
F 0 "#PWR8" H 6200 1850 30  0001 C CNN
F 1 "GND" H 6200 1780 30  0001 C CNN
F 2 "" H 6200 1850 60  0001 C CNN
F 3 "" H 6200 1850 60  0001 C CNN
	1    6200 1850
	1    0    0    -1  
$EndComp
Text Label 3700 2650 2    60   ~ 0
MCU_TX
Text Label 3700 2550 2    60   ~ 0
MCU_RX
$Comp
L GND #PWR4
U 1 1 50A11382
P 3600 4350
F 0 "#PWR4" H 3600 4350 30  0001 C CNN
F 1 "GND" H 3600 4280 30  0001 C CNN
F 2 "" H 3600 4350 60  0001 C CNN
F 3 "" H 3600 4350 60  0001 C CNN
	1    3600 4350
	1    0    0    -1  
$EndComp
Text Label 1750 3300 2    60   ~ 0
VCC 3V3
$Comp
L C C6
U 1 1 50A12AFF
P 3200 3750
F 0 "C6" H 3250 3850 50  0000 L CNN
F 1 "100 nF" H 3250 3650 50  0000 L CNN
F 2 "" H 3200 3750 60  0001 C CNN
F 3 "" H 3200 3750 60  0001 C CNN
	1    3200 3750
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 50A12C13
P 2950 3750
F 0 "C5" H 3000 3850 50  0000 L CNN
F 1 "100 nF" H 3000 3650 50  0000 L CNN
F 2 "" H 2950 3750 60  0001 C CNN
F 3 "" H 2950 3750 60  0001 C CNN
	1    2950 3750
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 50A12C19
P 2700 3750
F 0 "C4" H 2750 3850 50  0000 L CNN
F 1 "100 nF" H 2750 3650 50  0000 L CNN
F 2 "" H 2700 3750 60  0001 C CNN
F 3 "" H 2700 3750 60  0001 C CNN
	1    2700 3750
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 50A12C1F
P 2450 3750
F 0 "C3" H 2500 3850 50  0000 L CNN
F 1 "100 nF" H 2500 3650 50  0000 L CNN
F 2 "" H 2450 3750 60  0001 C CNN
F 3 "" H 2450 3750 60  0001 C CNN
	1    2450 3750
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 50A13CD9
P 2200 3750
F 0 "C2" H 2250 3850 50  0000 L CNN
F 1 "100 nF" H 2250 3650 50  0000 L CNN
F 2 "" H 2200 3750 60  0001 C CNN
F 3 "" H 2200 3750 60  0001 C CNN
	1    2200 3750
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 50A0F5F7
P 5000 4850
F 0 "R1" V 5080 4850 50  0000 C CNN
F 1 "4.7 kΩ" V 5000 4850 50  0000 C CNN
F 2 "" H 5000 4850 60  0001 C CNN
F 3 "" H 5000 4850 60  0001 C CNN
	1    5000 4850
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 50A0F6CF
P 5650 4850
F 0 "R2" V 5730 4850 50  0000 C CNN
F 1 "4.7 kΩ" V 5650 4850 50  0000 C CNN
F 2 "" H 5650 4850 60  0001 C CNN
F 3 "" H 5650 4850 60  0001 C CNN
	1    5650 4850
	0    1    1    0   
$EndComp
Text Label 4750 4850 2    60   ~ 0
VCC 3V3
$Comp
L GND #PWR7
U 1 1 50A10542
P 5400 5500
F 0 "#PWR7" H 5400 5500 30  0001 C CNN
F 1 "GND" H 5400 5430 30  0001 C CNN
F 2 "" H 5400 5500 60  0001 C CNN
F 3 "" H 5400 5500 60  0001 C CNN
	1    5400 5500
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 50A10BE6
P 5250 5200
F 0 "C7" H 5300 5300 50  0000 L CNN
F 1 "100 nF" H 5300 5100 50  0000 L CNN
F 2 "" H 5250 5200 60  0001 C CNN
F 3 "" H 5250 5200 60  0001 C CNN
	1    5250 5200
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR2
U 1 1 5115C18A
P 2400 1700
F 0 "#PWR2" H 2400 1700 30  0001 C CNN
F 1 "GND" H 2400 1630 30  0001 C CNN
F 2 "" H 2400 1700 60  0001 C CNN
F 3 "" H 2400 1700 60  0001 C CNN
	1    2400 1700
	1    0    0    -1  
$EndComp
Text Label 5550 3900 0    60   ~ 0
BOOT
Text Label 5550 4000 0    60   ~ 0
NRST
Text Label 2350 1300 0    60   ~ 0
BOOT
Text Label 2350 1400 0    60   ~ 0
NRST
Text Label 2350 1100 0    60   ~ 0
MCU_RX
Text Label 2350 1200 0    60   ~ 0
MCU_TX
$Comp
L PLCC6XRGBCT U3
U 1 1 5115C3F8
P 7900 1800
F 0 "U3" H 7900 2250 60  0000 C CNN
F 1 "PLCC6XRGBCT" H 7900 1300 60  0000 C CNN
F 2 "" H 7900 1800 60  0001 C CNN
F 3 "" H 7900 1800 60  0001 C CNN
	1    7900 1800
	-1   0    0    1   
$EndComp
$Comp
L MOSFET_N Q1
U 1 1 5115C407
P 9950 4300
F 0 "Q1" H 9960 4470 60  0000 R CNN
F 1 "MOSFET_N" H 9960 4150 60  0000 R CNN
F 2 "" H 9950 4300 60  0001 C CNN
F 3 "" H 9950 4300 60  0001 C CNN
	1    9950 4300
	0    -1   -1   0   
$EndComp
$Comp
L PLCC6XRGBCT U6
U 1 1 5115C428
P 8600 1800
F 0 "U6" H 8600 2250 60  0000 C CNN
F 1 "PLCC6XRGBCT" H 8600 1300 60  0000 C CNN
F 2 "" H 8600 1800 60  0001 C CNN
F 3 "" H 8600 1800 60  0001 C CNN
	1    8600 1800
	-1   0    0    1   
$EndComp
$Comp
L PLCC6XRGBCT U9
U 1 1 5115C42E
P 9300 1800
F 0 "U9" H 9300 2250 60  0000 C CNN
F 1 "PLCC6XRGBCT" H 9300 1300 60  0000 C CNN
F 2 "" H 9300 1800 60  0001 C CNN
F 3 "" H 9300 1800 60  0001 C CNN
	1    9300 1800
	-1   0    0    1   
$EndComp
$Comp
L R R4
U 1 1 5115C539
P 7300 1500
F 0 "R4" V 7380 1500 50  0000 C CNN
F 1 "R" V 7300 1500 50  0000 C CNN
F 2 "" H 7300 1500 60  0001 C CNN
F 3 "" H 7300 1500 60  0001 C CNN
	1    7300 1500
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 5115C546
P 7300 1750
F 0 "R5" V 7380 1750 50  0000 C CNN
F 1 "R" V 7300 1750 50  0000 C CNN
F 2 "" H 7300 1750 60  0001 C CNN
F 3 "" H 7300 1750 60  0001 C CNN
	1    7300 1750
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 5115C54C
P 7300 2000
F 0 "R6" V 7380 2000 50  0000 C CNN
F 1 "R" V 7300 2000 50  0000 C CNN
F 2 "" H 7300 2000 60  0001 C CNN
F 3 "" H 7300 2000 60  0001 C CNN
	1    7300 2000
	0    -1   -1   0   
$EndComp
$Comp
L PLCC6XRGBCT U4
U 1 1 5115C62B
P 7900 2700
F 0 "U4" H 7900 3150 60  0000 C CNN
F 1 "PLCC6XRGBCT" H 7900 2200 60  0000 C CNN
F 2 "" H 7900 2700 60  0001 C CNN
F 3 "" H 7900 2700 60  0001 C CNN
	1    7900 2700
	-1   0    0    1   
$EndComp
$Comp
L PLCC6XRGBCT U7
U 1 1 5115C631
P 8600 2700
F 0 "U7" H 8600 3150 60  0000 C CNN
F 1 "PLCC6XRGBCT" H 8600 2200 60  0000 C CNN
F 2 "" H 8600 2700 60  0001 C CNN
F 3 "" H 8600 2700 60  0001 C CNN
	1    8600 2700
	-1   0    0    1   
$EndComp
$Comp
L PLCC6XRGBCT U10
U 1 1 5115C637
P 9300 2700
F 0 "U10" H 9300 3150 60  0000 C CNN
F 1 "PLCC6XRGBCT" H 9300 2200 60  0000 C CNN
F 2 "" H 9300 2700 60  0001 C CNN
F 3 "" H 9300 2700 60  0001 C CNN
	1    9300 2700
	-1   0    0    1   
$EndComp
$Comp
L R R7
U 1 1 5115C63D
P 7300 2400
F 0 "R7" V 7380 2400 50  0000 C CNN
F 1 "R" V 7300 2400 50  0000 C CNN
F 2 "" H 7300 2400 60  0001 C CNN
F 3 "" H 7300 2400 60  0001 C CNN
	1    7300 2400
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 5115C643
P 7300 2650
F 0 "R8" V 7380 2650 50  0000 C CNN
F 1 "R" V 7300 2650 50  0000 C CNN
F 2 "" H 7300 2650 60  0001 C CNN
F 3 "" H 7300 2650 60  0001 C CNN
	1    7300 2650
	0    -1   -1   0   
$EndComp
$Comp
L R R9
U 1 1 5115C649
P 7300 2900
F 0 "R9" V 7380 2900 50  0000 C CNN
F 1 "R" V 7300 2900 50  0000 C CNN
F 2 "" H 7300 2900 60  0001 C CNN
F 3 "" H 7300 2900 60  0001 C CNN
	1    7300 2900
	0    -1   -1   0   
$EndComp
$Comp
L PLCC6XRGBCT U5
U 1 1 5115C652
P 7900 3550
F 0 "U5" H 7900 4000 60  0000 C CNN
F 1 "PLCC6XRGBCT" H 7900 3050 60  0000 C CNN
F 2 "" H 7900 3550 60  0001 C CNN
F 3 "" H 7900 3550 60  0001 C CNN
	1    7900 3550
	-1   0    0    1   
$EndComp
$Comp
L PLCC6XRGBCT U8
U 1 1 5115C658
P 8600 3550
F 0 "U8" H 8600 4000 60  0000 C CNN
F 1 "PLCC6XRGBCT" H 8600 3050 60  0000 C CNN
F 2 "" H 8600 3550 60  0001 C CNN
F 3 "" H 8600 3550 60  0001 C CNN
	1    8600 3550
	-1   0    0    1   
$EndComp
$Comp
L PLCC6XRGBCT U11
U 1 1 5115C65E
P 9300 3550
F 0 "U11" H 9300 4000 60  0000 C CNN
F 1 "PLCC6XRGBCT" H 9300 3050 60  0000 C CNN
F 2 "" H 9300 3550 60  0001 C CNN
F 3 "" H 9300 3550 60  0001 C CNN
	1    9300 3550
	-1   0    0    1   
$EndComp
$Comp
L R R10
U 1 1 5115C664
P 7300 3250
F 0 "R10" V 7380 3250 50  0000 C CNN
F 1 "R" V 7300 3250 50  0000 C CNN
F 2 "" H 7300 3250 60  0001 C CNN
F 3 "" H 7300 3250 60  0001 C CNN
	1    7300 3250
	0    -1   -1   0   
$EndComp
$Comp
L R R11
U 1 1 5115C66A
P 7300 3500
F 0 "R11" V 7380 3500 50  0000 C CNN
F 1 "R" V 7300 3500 50  0000 C CNN
F 2 "" H 7300 3500 60  0001 C CNN
F 3 "" H 7300 3500 60  0001 C CNN
	1    7300 3500
	0    -1   -1   0   
$EndComp
$Comp
L R R12
U 1 1 5115C670
P 7300 3750
F 0 "R12" V 7380 3750 50  0000 C CNN
F 1 "R" V 7300 3750 50  0000 C CNN
F 2 "" H 7300 3750 60  0001 C CNN
F 3 "" H 7300 3750 60  0001 C CNN
	1    7300 3750
	0    -1   -1   0   
$EndComp
$Comp
L MOSFET_N Q2
U 1 1 5115C84A
P 10450 4300
F 0 "Q2" H 10460 4470 60  0000 R CNN
F 1 "MOSFET_N" H 10460 4150 60  0000 R CNN
F 2 "" H 10450 4300 60  0001 C CNN
F 3 "" H 10450 4300 60  0001 C CNN
	1    10450 4300
	0    -1   -1   0   
$EndComp
$Comp
L MOSFET_N Q3
U 1 1 5115C85F
P 10950 4300
F 0 "Q3" H 10960 4470 60  0000 R CNN
F 1 "MOSFET_N" H 10960 4150 60  0000 R CNN
F 2 "" H 10950 4300 60  0001 C CNN
F 3 "" H 10950 4300 60  0001 C CNN
	1    10950 4300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR11
U 1 1 5115CC5E
P 10150 5500
F 0 "#PWR11" H 10150 5500 30  0001 C CNN
F 1 "GND" H 10150 5430 30  0001 C CNN
F 2 "" H 10150 5500 60  0001 C CNN
F 3 "" H 10150 5500 60  0001 C CNN
	1    10150 5500
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 5115CD2F
P 9950 4950
F 0 "R13" V 10030 4950 50  0000 C CNN
F 1 "R" V 9950 4950 50  0000 C CNN
F 2 "" H 9950 4950 60  0001 C CNN
F 3 "" H 9950 4950 60  0001 C CNN
	1    9950 4950
	-1   0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 5115CE11
P 10450 4950
F 0 "R14" V 10530 4950 50  0000 C CNN
F 1 "R" V 10450 4950 50  0000 C CNN
F 2 "" H 10450 4950 60  0001 C CNN
F 3 "" H 10450 4950 60  0001 C CNN
	1    10450 4950
	-1   0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 5115CE17
P 10950 4950
F 0 "R15" V 11030 4950 50  0000 C CNN
F 1 "R" V 10950 4950 50  0000 C CNN
F 2 "" H 10950 4950 60  0001 C CNN
F 3 "" H 10950 4950 60  0001 C CNN
	1    10950 4950
	-1   0    0    -1  
$EndComp
Text Label 9600 4500 2    60   ~ 0
R
Text Label 9600 4600 2    60   ~ 0
G
Text Label 9600 4700 2    60   ~ 0
B
Text Label 5250 1600 0    60   ~ 0
R
Text Label 3700 1800 2    60   ~ 0
G
Text Label 3700 1700 2    60   ~ 0
B
Text Label 6850 1150 2    60   ~ 0
VDD_UNFUSED
$Comp
L VREG U2
U 1 1 5115C4E2
P 7300 4950
F 0 "U2" H 7100 5100 60  0000 C CNN
F 1 "VREG" H 7450 4750 60  0000 C CNN
F 2 "" H 7300 4950 60  0001 C CNN
F 3 "" H 7300 4950 60  0001 C CNN
	1    7300 4950
	1    0    0    -1  
$EndComp
Text Label 6350 4900 2    60   ~ 0
VDD
Text Label 8000 4800 0    60   ~ 0
VCC 3V3
$Comp
L GND #PWR9
U 1 1 5115C4F1
P 7300 5550
F 0 "#PWR9" H 7300 5550 30  0001 C CNN
F 1 "GND" H 7300 5480 30  0001 C CNN
F 2 "" H 7300 5550 60  0001 C CNN
F 3 "" H 7300 5550 60  0001 C CNN
	1    7300 5550
	1    0    0    -1  
$EndComp
$Comp
L CP1 C1
U 1 1 5115C4FD
P 6400 5150
F 0 "C1" H 6450 5250 50  0000 L CNN
F 1 "22 µF" H 6450 5050 50  0000 L CNN
F 2 "" H 6400 5150 60  0001 C CNN
F 3 "" H 6400 5150 60  0001 C CNN
	1    6400 5150
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 5115C521
P 7950 5150
F 0 "C9" H 8000 5250 50  0000 L CNN
F 1 "100 nF" H 8000 5050 50  0000 L CNN
F 2 "" H 7950 5150 60  0001 C CNN
F 3 "" H 7950 5150 60  0001 C CNN
	1    7950 5150
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 5115C535
P 6650 5150
F 0 "C8" H 6700 5250 50  0000 L CNN
F 1 "100 nF" H 6700 5050 50  0000 L CNN
F 2 "" H 6650 5150 60  0001 C CNN
F 3 "" H 6650 5150 60  0001 C CNN
	1    6650 5150
	1    0    0    -1  
$EndComp
NoConn ~ 5250 3750
NoConn ~ 5250 3650
NoConn ~ 5250 3500
NoConn ~ 5250 3400
NoConn ~ 5250 3300
NoConn ~ 3700 2850
NoConn ~ 5250 3050
NoConn ~ 5250 2950
NoConn ~ 5250 2850
NoConn ~ 5250 2650
NoConn ~ 5250 2550
NoConn ~ 3700 3150
NoConn ~ 3700 3050
NoConn ~ 3700 2950
NoConn ~ 5250 2450
NoConn ~ 5250 2300
NoConn ~ 5250 2200
NoConn ~ 5250 2100
NoConn ~ 5250 2000
NoConn ~ 5250 1900
NoConn ~ 5250 1700
NoConn ~ 3700 2450
$Comp
L CONN_2 P2
U 1 1 5115CB7A
P 3650 7000
F 0 "P2" V 3600 7000 40  0000 C CNN
F 1 "CONN_2" V 3700 7000 40  0000 C CNN
F 2 "" H 3650 7000 60  0001 C CNN
F 3 "" H 3650 7000 60  0001 C CNN
	1    3650 7000
	-1   0    0    -1  
$EndComp
$Comp
L CONN_4 P3
U 1 1 51553AC7
P 10250 700
F 0 "P3" V 10200 700 50  0000 C CNN
F 1 "CONN_4" V 10300 700 50  0000 C CNN
F 2 "" H 10250 700 60  0001 C CNN
F 3 "" H 10250 700 60  0001 C CNN
	1    10250 700 
	0    -1   -1   0   
$EndComp
$Comp
L RF2400-NANO U12
U 1 1 51556B9E
P 3500 5900
F 0 "U12" H 3200 6400 60  0000 C CNN
F 1 "RF2400-NANO" H 3500 5350 60  0000 C CNN
F 2 "~" H 3500 5900 60  0000 C CNN
F 3 "~" H 3500 5900 60  0000 C CNN
	1    3500 5900
	1    0    0    -1  
$EndComp
Text Label 2800 6250 2    60   ~ 0
RF_IRQ
Text Label 2800 6150 2    60   ~ 0
RF_MISO
Text Label 2800 6050 2    60   ~ 0
RF_MOSI
Text Label 2800 5950 2    60   ~ 0
RF_SCK
Text Label 2800 5850 2    60   ~ 0
RF_CSN
Text Label 2800 5750 2    60   ~ 0
RF_CE
Text Label 3700 2000 2    60   ~ 0
RF_CSN
Text Label 3700 2100 2    60   ~ 0
RF_SCK
Text Label 3700 2300 2    60   ~ 0
RF_MOSI
Text Label 3700 2200 2    60   ~ 0
RF_MISO
Text Label 5250 3150 0    60   ~ 0
RF_IRQ
Text Label 3700 2750 2    60   ~ 0
RF_CE
Text Label 3700 1600 2    60   ~ 0
POWER_SENSE
$Comp
L STM32F100 U1
U 1 1 50A09271
P 4450 2900
F 0 "U1" H 4400 4400 60  0000 C CNN
F 1 "STM32F100" H 4150 1350 60  0000 C CNN
F 2 "" H 4450 2900 60  0001 C CNN
F 3 "" H 4450 2900 60  0001 C CNN
	1    4450 2900
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 5155781A
P 1800 5400
F 0 "C11" H 1850 5500 50  0000 L CNN
F 1 "100 nF" H 1850 5300 50  0000 L CNN
F 2 "" H 1800 5400 60  0001 C CNN
F 3 "" H 1800 5400 60  0001 C CNN
	1    1800 5400
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 51557820
P 1400 5400
F 0 "C10" H 1450 5500 50  0000 L CNN
F 1 "1 µF" H 1450 5300 50  0000 L CNN
F 2 "" H 1400 5400 60  0001 C CNN
F 3 "" H 1400 5400 60  0001 C CNN
	1    1400 5400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR1
U 1 1 51557841
P 1400 5750
F 0 "#PWR1" H 1400 5750 30  0001 C CNN
F 1 "GND" H 1400 5680 30  0001 C CNN
F 2 "" H 1400 5750 60  0001 C CNN
F 3 "" H 1400 5750 60  0001 C CNN
	1    1400 5750
	1    0    0    -1  
$EndComp
Text Label 1300 5050 2    60   ~ 0
VCC 3V3
$Comp
L GND #PWR3
U 1 1 51557B24
P 2450 5500
F 0 "#PWR3" H 2450 5500 30  0001 C CNN
F 1 "GND" H 2450 5430 30  0001 C CNN
F 2 "" H 2450 5500 60  0001 C CNN
F 3 "" H 2450 5500 60  0001 C CNN
	1    2450 5500
	1    0    0    -1  
$EndComp
$Comp
L SMA J1
U 1 1 51557BCC
P 4000 4750
F 0 "J1" H 4175 4865 60  0000 C CNN
F 1 "SMA" H 4240 4790 60  0000 C CNN
F 2 "SMA" H 4225 4720 50  0000 C CNN
F 3 "~" H 4000 4750 60  0000 C CNN
	1    4000 4750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR5
U 1 1 51557BE3
P 4000 5250
F 0 "#PWR5" H 4000 5250 30  0001 C CNN
F 1 "GND" H 4000 5180 30  0001 C CNN
F 2 "" H 4000 5250 60  0001 C CNN
F 3 "" H 4000 5250 60  0001 C CNN
	1    4000 5250
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 5155818C
P 3700 4900
F 0 "R16" V 3780 4900 50  0000 C CNN
F 1 "0 Ω" V 3700 4900 50  0000 C CNN
F 2 "" H 3700 4900 60  0001 C CNN
F 3 "" H 3700 4900 60  0001 C CNN
	1    3700 4900
	-1   0    0    1   
$EndComp
Text Label 6750 4350 2    60   ~ 0
POWER_SENSE
$Comp
L R R17
U 1 1 515583F4
P 6850 4000
F 0 "R17" V 6930 4000 50  0000 C CNN
F 1 "R" V 6850 4000 50  0000 C CNN
F 2 "" H 6850 4000 60  0001 C CNN
F 3 "" H 6850 4000 60  0001 C CNN
	1    6850 4000
	-1   0    0    1   
$EndComp
$Comp
L R R18
U 1 1 515583FA
P 7200 4350
F 0 "R18" V 7280 4350 50  0000 C CNN
F 1 "R" V 7200 4350 50  0000 C CNN
F 2 "" H 7200 4350 60  0001 C CNN
F 3 "" H 7200 4350 60  0001 C CNN
	1    7200 4350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR10
U 1 1 51558400
P 7500 4450
F 0 "#PWR10" H 7500 4450 30  0001 C CNN
F 1 "GND" H 7500 4380 30  0001 C CNN
F 2 "" H 7500 4450 60  0001 C CNN
F 3 "" H 7500 4450 60  0001 C CNN
	1    7500 4450
	1    0    0    -1  
$EndComp
$Comp
L ZENER D2
U 1 1 51579156
P 8400 5200
F 0 "D2" H 8400 5300 50  0000 C CNN
F 1 "ZENER" H 8400 5100 40  0000 C CNN
F 2 "~" H 8400 5000 60  0000 C CNN
F 3 "~" H 8400 5200 60  0000 C CNN
	1    8400 5200
	0    -1   -1   0   
$EndComp
$Comp
L FUSE F1
U 1 1 51579174
P 5300 5900
F 0 "F1" H 5400 5950 40  0000 C CNN
F 1 "FUSE" H 5200 5850 40  0000 C CNN
F 2 "~" H 5300 5900 60  0000 C CNN
F 3 "~" H 5300 5900 60  0000 C CNN
	1    5300 5900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR6
U 1 1 51579237
P 4700 7450
F 0 "#PWR6" H 4700 7450 30  0001 C CNN
F 1 "GND" H 4700 7380 30  0001 C CNN
F 2 "" H 4700 7450 60  0001 C CNN
F 3 "" H 4700 7450 60  0001 C CNN
	1    4700 7450
	1    0    0    -1  
$EndComp
Text Label 6050 5900 0    60   ~ 0
VDD
$Comp
L CONN_6 P1
U 1 1 5157AA14
P 2000 1250
F 0 "P1" V 1950 1250 60  0000 C CNN
F 1 "CONN_6" V 2050 1250 60  0000 C CNN
F 2 "" H 2000 1250 60  0001 C CNN
F 3 "" H 2000 1250 60  0001 C CNN
	1    2000 1250
	-1   0    0    1   
$EndComp
Text Label 3700 1900 2    60   ~ 0
GP1
Text Label 2350 1000 0    60   ~ 0
GP1
Text Label 4900 5800 2    60   ~ 0
VDD_UNFUSED
Text Label 5250 2750 0    60   ~ 0
PWR_DATA
$Comp
L DIODE D1
U 1 1 515E651A
P 4450 6650
F 0 "D1" H 4450 6750 40  0000 C CNN
F 1 "DIODE" H 4450 6550 40  0000 C CNN
F 2 "" H 4450 6650 60  0000 C CNN
F 3 "" H 4450 6650 60  0000 C CNN
	1    4450 6650
	1    0    0    -1  
$EndComp
$Comp
L DIODE D3
U 1 1 515E6527
P 4450 6900
F 0 "D3" H 4450 7000 40  0000 C CNN
F 1 "DIODE" H 4450 6800 40  0000 C CNN
F 2 "" H 4450 6900 60  0000 C CNN
F 3 "" H 4450 6900 60  0000 C CNN
	1    4450 6900
	1    0    0    -1  
$EndComp
$Comp
L DIODE D4
U 1 1 515E652D
P 4450 7150
F 0 "D4" H 4450 7250 40  0000 C CNN
F 1 "DIODE" H 4450 7050 40  0000 C CNN
F 2 "" H 4450 7150 60  0000 C CNN
F 3 "" H 4450 7150 60  0000 C CNN
	1    4450 7150
	-1   0    0    1   
$EndComp
$Comp
L DIODE D5
U 1 1 515E6533
P 4450 7400
F 0 "D5" H 4450 7500 40  0000 C CNN
F 1 "DIODE" H 4450 7300 40  0000 C CNN
F 2 "" H 4450 7400 60  0000 C CNN
F 3 "" H 4450 7400 60  0000 C CNN
	1    4450 7400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 1800 6200 1800
Wire Wire Line
	6200 1800 6200 1850
Wire Wire Line
	3700 3900 3600 3900
Wire Wire Line
	3600 3900 3600 4350
Wire Wire Line
	1900 4250 3700 4250
Connection ~ 3600 4250
Wire Wire Line
	3700 4100 3600 4100
Connection ~ 3600 4100
Wire Wire Line
	3700 4000 3600 4000
Connection ~ 3600 4000
Wire Wire Line
	1750 3300 3700 3300
Wire Wire Line
	3700 3400 3550 3400
Wire Wire Line
	3550 3300 3550 3750
Connection ~ 3550 3300
Wire Wire Line
	3550 3500 3700 3500
Connection ~ 3550 3400
Wire Wire Line
	3550 3650 3700 3650
Connection ~ 3550 3500
Wire Wire Line
	2200 4250 2200 3950
Wire Wire Line
	2450 3950 2450 4250
Connection ~ 2450 4250
Wire Wire Line
	2700 3950 2700 4250
Connection ~ 2700 4250
Wire Wire Line
	2950 3950 2950 4250
Connection ~ 2950 4250
Wire Wire Line
	3200 3950 3200 4250
Connection ~ 3200 4250
Wire Wire Line
	2200 3300 2200 3550
Wire Wire Line
	2450 3550 2450 3300
Connection ~ 2450 3300
Wire Wire Line
	2700 3550 2700 3300
Connection ~ 2700 3300
Wire Wire Line
	2950 3550 2950 3300
Connection ~ 2950 3300
Wire Wire Line
	3200 3550 3200 3300
Connection ~ 3200 3300
Connection ~ 2200 3300
Wire Wire Line
	3550 3750 3700 3750
Connection ~ 3550 3650
Connection ~ 1900 3300
Connection ~ 2200 4250
Wire Wire Line
	5400 3900 5400 4850
Wire Wire Line
	5250 3900 5550 3900
Wire Wire Line
	5250 4000 5250 5000
Wire Wire Line
	5250 5400 5950 5400
Wire Wire Line
	5400 5400 5400 5500
Wire Wire Line
	5950 5400 5950 4850
Wire Wire Line
	5950 4850 5900 4850
Connection ~ 5400 5400
Connection ~ 5250 4850
Wire Wire Line
	5250 1800 5650 1800
Connection ~ 2000 3300
Connection ~ 5400 3900
Wire Wire Line
	5250 4050 5550 4050
Wire Wire Line
	5550 4050 5550 4000
Connection ~ 5250 4050
Wire Wire Line
	2350 1500 2400 1500
Wire Wire Line
	2400 1500 2400 1700
Wire Wire Line
	6850 2000 7050 2000
Wire Wire Line
	6850 1150 6850 3750
Wire Wire Line
	7050 1750 6850 1750
Connection ~ 6850 1750
Wire Wire Line
	7050 1500 6850 1500
Connection ~ 6850 1500
Wire Wire Line
	6850 2900 7050 2900
Wire Wire Line
	6850 2650 7050 2650
Wire Wire Line
	6850 2400 7050 2400
Wire Wire Line
	6850 3750 7050 3750
Wire Wire Line
	6850 3500 7050 3500
Wire Wire Line
	6850 3250 7050 3250
Connection ~ 6850 2000
Connection ~ 6850 2400
Connection ~ 6850 2650
Connection ~ 6850 2900
Connection ~ 6850 3250
Connection ~ 6850 3500
Wire Wire Line
	9750 1500 9750 4200
Wire Wire Line
	9650 1500 10200 1500
Wire Wire Line
	9650 2400 9750 2400
Connection ~ 9750 2400
Wire Wire Line
	9650 3250 9750 3250
Connection ~ 9750 3250
Wire Wire Line
	10250 1350 10250 4200
Wire Wire Line
	10250 1750 9650 1750
Wire Wire Line
	9650 2650 10250 2650
Connection ~ 10250 2650
Wire Wire Line
	9650 3500 10250 3500
Connection ~ 10250 3500
Wire Wire Line
	9650 2000 10750 2000
Wire Wire Line
	10750 1350 10750 4200
Wire Wire Line
	9650 3750 10750 3750
Connection ~ 10750 3750
Wire Wire Line
	9650 2900 10750 2900
Connection ~ 10750 2900
Wire Wire Line
	9950 5400 11150 5400
Connection ~ 10150 5400
Connection ~ 10650 5400
Wire Wire Line
	9950 5400 9950 5200
Wire Wire Line
	10150 4200 10150 5500
Wire Wire Line
	11150 5400 11150 4200
Wire Wire Line
	10650 4200 10650 5400
Wire Wire Line
	9950 4500 9950 4700
Wire Wire Line
	10450 4500 10450 4700
Wire Wire Line
	10950 4500 10950 4700
Wire Wire Line
	10950 5200 10950 5400
Connection ~ 10950 5400
Wire Wire Line
	10450 5200 10450 5400
Connection ~ 10450 5400
Wire Wire Line
	9600 4500 9950 4500
Wire Wire Line
	9600 4600 10450 4600
Connection ~ 10450 4600
Wire Wire Line
	10950 4700 9600 4700
Wire Wire Line
	6400 4950 6400 4900
Wire Wire Line
	6200 4900 6750 4900
Connection ~ 6400 4900
Wire Wire Line
	6650 4950 6650 4900
Connection ~ 6650 4900
Wire Wire Line
	7300 5400 7300 5550
Wire Wire Line
	6400 5500 8400 5500
Connection ~ 7300 5500
Wire Wire Line
	6650 5350 6650 5500
Connection ~ 6650 5500
Wire Wire Line
	7950 5500 7950 5350
Wire Wire Line
	7950 4800 7950 4950
Wire Wire Line
	7900 4900 8400 4900
Connection ~ 7950 4900
Connection ~ 6400 5500
Wire Wire Line
	10750 1350 10400 1350
Wire Wire Line
	10400 1350 10400 1050
Connection ~ 10750 2000
Wire Wire Line
	10250 1350 10300 1350
Wire Wire Line
	10300 1350 10300 1050
Connection ~ 10250 1750
Wire Wire Line
	10200 1500 10200 1050
Connection ~ 9750 1500
Wire Wire Line
	10100 1050 10100 1200
Wire Wire Line
	10100 1200 6850 1200
Connection ~ 6850 1200
Wire Wire Line
	1300 5050 1300 5150
Wire Wire Line
	1300 5150 2050 5150
Wire Wire Line
	1400 5150 1400 5200
Wire Wire Line
	1800 5150 1800 5200
Connection ~ 1400 5150
Wire Wire Line
	2800 5650 2050 5650
Wire Wire Line
	2050 5650 2050 5150
Connection ~ 1800 5150
Wire Wire Line
	1400 5600 1400 5750
Wire Wire Line
	1400 5650 1800 5650
Wire Wire Line
	1800 5650 1800 5600
Connection ~ 1400 5650
Wire Wire Line
	2800 5550 2800 5400
Wire Wire Line
	2800 5400 2450 5400
Wire Wire Line
	2450 5400 2450 5500
Wire Wire Line
	3800 5150 4150 5150
Wire Wire Line
	4000 4850 4000 5250
Wire Wire Line
	3600 5150 3600 4550
Wire Wire Line
	3600 4550 4150 4550
Wire Wire Line
	4150 4550 4150 5150
Connection ~ 4000 5150
Wire Wire Line
	4100 4850 4100 5150
Connection ~ 4100 5150
Wire Wire Line
	4050 4850 4050 5150
Connection ~ 4050 5150
Wire Wire Line
	3950 4850 3950 5150
Connection ~ 3950 5150
Wire Wire Line
	3900 4650 3700 4650
Wire Wire Line
	7450 4350 7500 4350
Wire Wire Line
	7500 4350 7500 4450
Wire Wire Line
	6750 4350 6950 4350
Wire Wire Line
	6850 4350 6850 4250
Connection ~ 6850 4350
Wire Wire Line
	6400 5350 6400 5500
Wire Wire Line
	4700 5900 5050 5900
Wire Wire Line
	4900 5800 4900 5900
Connection ~ 4900 5900
Wire Wire Line
	5550 5900 6050 5900
Wire Wire Line
	8000 4800 7950 4800
Wire Wire Line
	8400 4900 8400 5000
Wire Wire Line
	8400 5500 8400 5400
Connection ~ 7950 5500
Wire Wire Line
	4650 6650 4700 6650
Wire Wire Line
	4700 5900 4700 6900
Wire Wire Line
	4700 6900 4650 6900
Wire Wire Line
	4650 7150 4700 7150
Wire Wire Line
	4700 7150 4700 7450
Wire Wire Line
	4650 7400 6100 7400
Connection ~ 4700 7400
Connection ~ 4700 6650
Wire Wire Line
	4000 6650 4250 6650
Wire Wire Line
	4150 6500 4150 7150
Wire Wire Line
	4150 7150 4250 7150
Wire Wire Line
	4050 7400 4250 7400
Wire Wire Line
	4050 6900 4050 7400
Wire Wire Line
	4050 7100 4000 7100
Wire Wire Line
	4250 6900 4050 6900
Connection ~ 4050 7100
Connection ~ 4150 6650
Text Label 6400 6700 0    60   ~ 0
PWR_DATA
$Comp
L R R19
U 1 1 515E71BA
P 5500 6700
F 0 "R19" V 5580 6700 50  0000 C CNN
F 1 "R" V 5500 6700 50  0000 C CNN
F 2 "" H 5500 6700 60  0000 C CNN
F 3 "" H 5500 6700 60  0000 C CNN
	1    5500 6700
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D7
U 1 1 515E71C9
P 5850 7000
F 0 "D7" H 5850 7100 40  0000 C CNN
F 1 "DIODESCH" H 5850 6900 40  0000 C CNN
F 2 "" H 5850 7000 60  0000 C CNN
F 3 "" H 5850 7000 60  0000 C CNN
	1    5850 7000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 6650 4000 6900
Wire Wire Line
	5850 7400 5850 7200
Wire Wire Line
	5250 6700 5000 6700
Wire Wire Line
	5000 6700 5000 6500
Wire Wire Line
	5000 6500 4150 6500
$Comp
L ZENER D6
U 1 1 51AF98D1
P 6100 7000
F 0 "D6" H 6100 7100 50  0000 C CNN
F 1 "ZENER" H 6100 6900 40  0000 C CNN
F 2 "~" H 6100 6800 60  0000 C CNN
F 3 "~" H 6100 7000 60  0000 C CNN
	1    6100 7000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 7400 6100 7200
Connection ~ 5850 7400
Wire Wire Line
	5750 6700 6400 6700
Wire Wire Line
	6100 6700 6100 6800
Wire Wire Line
	5850 6800 5850 6700
Connection ~ 5850 6700
Connection ~ 6100 6700
$EndSCHEMATC
