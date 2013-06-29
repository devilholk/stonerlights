EESchema Schematic File Version 2  date Fri 14 Jun 2013 08:33:45 PM CEST
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
LIBS:stm32f100
LIBS:ft232r
LIBS:plcc6xrgbct
LIBS:vreg
LIBS:usb_micro-b
LIBS:microphone
LIBS:playboard1-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 7
Title ""
Date "14 jun 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L STM32F100 U2
U 1 1 51B2243D
P 5650 4150
F 0 "U2" H 5600 5650 60  0000 C CNN
F 1 "STM32F100" H 5350 2600 60  0000 C CNN
F 2 "" H 5650 4150 60  0000 C CNN
F 3 "" H 5650 4150 60  0000 C CNN
	1    5650 4150
	1    0    0    -1  
$EndComp
$Comp
L FT232R U1
U 1 1 51B22648
P 3500 1850
F 0 "U1" H 3200 2800 60  0000 C CNN
F 1 "FT232R" H 3250 1000 60  0000 C CNN
F 2 "" H 3500 1850 60  0000 C CNN
F 3 "" H 3500 1850 60  0000 C CNN
	1    3500 1850
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 51B229A5
P 1650 1550
F 0 "C2" H 1650 1650 40  0000 L CNN
F 1 "C" H 1656 1465 40  0000 L CNN
F 2 "~" H 1688 1400 30  0000 C CNN
F 3 "~" H 1650 1550 60  0000 C CNN
	1    1650 1550
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 51B22A07
P 1900 1600
F 0 "R2" V 1980 1600 40  0000 C CNN
F 1 "R" V 1907 1601 40  0000 C CNN
F 2 "~" V 1830 1600 30  0000 C CNN
F 3 "~" H 1900 1600 30  0000 C CNN
	1    1900 1600
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 51B22A14
P 1900 2200
F 0 "R3" V 1980 2200 40  0000 C CNN
F 1 "R" V 1907 2201 40  0000 C CNN
F 2 "~" V 1830 2200 30  0000 C CNN
F 3 "~" H 1900 2200 30  0000 C CNN
	1    1900 2200
	1    0    0    -1  
$EndComp
Text Label 1500 5900 2    60   ~ 0
USBD-
$Comp
L USB_MICRO-B P2
U 1 1 51B22A95
P 1900 6050
F 0 "P2" V 2300 6050 60  0000 C CNN
F 1 "USB_MICRO-B" V 2200 6050 60  0000 C CNN
F 2 "~" H 1900 5500 60  0000 C CNN
F 3 "~" H 1900 5500 60  0000 C CNN
	1    1900 6050
	1    0    0    -1  
$EndComp
Text Label 1500 6000 2    60   ~ 0
USBD+
Text Label 2800 1550 2    60   ~ 0
USBD-
Text Label 2800 1650 2    60   ~ 0
USBD+
$Comp
L GND #PWR3
U 1 1 51B22BC9
P 1650 2650
F 0 "#PWR3" H 1650 2650 30  0001 C CNN
F 1 "GND" H 1650 2580 30  0001 C CNN
F 2 "" H 1650 2650 60  0000 C CNN
F 3 "" H 1650 2650 60  0000 C CNN
	1    1650 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR1
U 1 1 51B22BF4
P 1400 6400
F 0 "#PWR1" H 1400 6400 30  0001 C CNN
F 1 "GND" H 1400 6330 30  0001 C CNN
F 2 "" H 1400 6400 60  0000 C CNN
F 3 "" H 1400 6400 60  0000 C CNN
	1    1400 6400
	1    0    0    -1  
$EndComp
Text Label 4100 1000 0    60   ~ 0
TX
Text Label 4100 1100 0    60   ~ 0
RX
Text Label 4100 1400 0    60   ~ 0
BOOT
Text Label 4100 1200 0    60   ~ 0
NRST
$Comp
L GND #PWR7
U 1 1 51B22D53
P 4150 2100
F 0 "#PWR7" H 4150 2100 30  0001 C CNN
F 1 "GND" H 4150 2030 30  0001 C CNN
F 2 "" H 4150 2100 60  0000 C CNN
F 3 "" H 4150 2100 60  0000 C CNN
	1    4150 2100
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 51B22D7B
P 1600 4300
F 0 "D1" H 1600 4400 50  0000 C CNN
F 1 "LED" H 1600 4200 50  0000 C CNN
F 2 "~" H 1600 4300 60  0000 C CNN
F 3 "~" H 1600 4300 60  0000 C CNN
	1    1600 4300
	0    1    1    0   
$EndComp
Text Label 4300 2300 0    60   ~ 0
RX_LED
Text Label 4300 2200 0    60   ~ 0
TX_LED
$Comp
L LED D2
U 1 1 51B22DE9
P 1900 4300
F 0 "D2" H 1900 4400 50  0000 C CNN
F 1 "LED" H 1900 4200 50  0000 C CNN
F 2 "~" H 1900 4300 60  0000 C CNN
F 3 "~" H 1900 4300 60  0000 C CNN
	1    1900 4300
	0    1    1    0   
$EndComp
$Comp
L LED D3
U 1 1 51B22DEF
P 2200 4300
F 0 "D3" H 2200 4400 50  0000 C CNN
F 1 "LED" H 2200 4200 50  0000 C CNN
F 2 "~" H 2200 4300 60  0000 C CNN
F 3 "~" H 2200 4300 60  0000 C CNN
	1    2200 4300
	0    1    1    0   
$EndComp
Text Label 1900 4500 3    60   ~ 0
RX_LED
Text Label 2200 4500 3    60   ~ 0
TX_LED
$Comp
L R R4
U 1 1 51B22E25
P 1900 3850
F 0 "R4" V 1980 3850 40  0000 C CNN
F 1 "R" V 1907 3851 40  0000 C CNN
F 2 "~" V 1830 3850 30  0000 C CNN
F 3 "~" H 1900 3850 30  0000 C CNN
	1    1900 3850
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 51B22E32
P 2200 3850
F 0 "R5" V 2280 3850 40  0000 C CNN
F 1 "R" V 2207 3851 40  0000 C CNN
F 2 "~" V 2130 3850 30  0000 C CNN
F 3 "~" H 2200 3850 30  0000 C CNN
	1    2200 3850
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 51B22E38
P 1600 3850
F 0 "R1" V 1680 3850 40  0000 C CNN
F 1 "R" V 1607 3851 40  0000 C CNN
F 2 "~" V 1530 3850 30  0000 C CNN
F 3 "~" H 1600 3850 30  0000 C CNN
	1    1600 3850
	1    0    0    -1  
$EndComp
Text Notes 1500 3400 0    60   ~ 0
USB Powered LED's
$Comp
L GND #PWR2
U 1 1 51B22E3E
P 1600 4500
F 0 "#PWR2" H 1600 4500 30  0001 C CNN
F 1 "GND" H 1600 4430 30  0001 C CNN
F 2 "" H 1600 4500 60  0000 C CNN
F 3 "" H 1600 4500 60  0000 C CNN
	1    1600 4500
	1    0    0    -1  
$EndComp
Text Label 1500 5800 2    60   ~ 0
V_USB
Text Label 1250 1100 2    60   ~ 0
V_USB
Text Label 1450 3500 2    60   ~ 0
V_USB
$Comp
L VREG U3
U 1 1 51B2321D
P 9500 1500
F 0 "U3" H 9300 1650 60  0000 C CNN
F 1 "VREG" H 9650 1300 60  0000 C CNN
F 2 "" H 9500 1500 60  0000 C CNN
F 3 "" H 9500 1500 60  0000 C CNN
	1    9500 1500
	1    0    0    -1  
$EndComp
Text Label 10200 1450 0    60   ~ 0
VCC_3V3
$Comp
L CP C8
U 1 1 51B2323C
P 8550 1750
F 0 "C8" H 8600 1850 40  0000 L CNN
F 1 "CP" H 8600 1650 40  0000 L CNN
F 2 "~" H 8650 1600 30  0000 C CNN
F 3 "~" H 8550 1750 300 0000 C CNN
	1    8550 1750
	1    0    0    -1  
$EndComp
Text Label 8050 1450 2    60   ~ 0
V_USB
$Comp
L DIODESCH D6
U 1 1 51B2357F
P 8250 1450
F 0 "D6" H 8250 1550 40  0000 C CNN
F 1 "DIODESCH" H 8250 1350 40  0000 C CNN
F 2 "~" H 8250 1450 60  0000 C CNN
F 3 "~" H 8250 1450 60  0000 C CNN
	1    8250 1450
	1    0    0    -1  
$EndComp
$Comp
L DIODESCH D5
U 1 1 51B2365B
P 8250 1150
F 0 "D5" H 8250 1250 40  0000 C CNN
F 1 "DIODESCH" H 8250 1050 40  0000 C CNN
F 2 "~" H 8250 1150 60  0000 C CNN
F 3 "~" H 8250 1150 60  0000 C CNN
	1    8250 1150
	1    0    0    -1  
$EndComp
Text Label 8050 1150 2    60   ~ 0
V_EXT
$Comp
L CP C10
U 1 1 51B2383D
P 10150 1750
F 0 "C10" H 10200 1850 40  0000 L CNN
F 1 "CP" H 10200 1650 40  0000 L CNN
F 2 "~" H 10250 1600 30  0000 C CNN
F 3 "~" H 10150 1750 300 0000 C CNN
	1    10150 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR14
U 1 1 51B238E4
P 8550 2150
F 0 "#PWR14" H 8550 2150 30  0001 C CNN
F 1 "GND" H 8550 2080 30  0001 C CNN
F 2 "" H 8550 2150 60  0000 C CNN
F 3 "" H 8550 2150 60  0000 C CNN
	1    8550 2150
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 51B23923
P 1400 1550
F 0 "C1" H 1400 1650 40  0000 L CNN
F 1 "C" H 1406 1465 40  0000 L CNN
F 2 "~" H 1438 1400 30  0000 C CNN
F 3 "~" H 1400 1550 60  0000 C CNN
	1    1400 1550
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 51B239DF
P 8850 1750
F 0 "C9" H 8850 1850 40  0000 L CNN
F 1 "C" H 8856 1665 40  0000 L CNN
F 2 "~" H 8888 1600 30  0000 C CNN
F 3 "~" H 8850 1750 60  0000 C CNN
	1    8850 1750
	1    0    0    -1  
$EndComp
Text Label 4700 4550 2    60   ~ 0
VCC_3V3
$Comp
L GND #PWR8
U 1 1 51B23E99
P 4800 5600
F 0 "#PWR8" H 4800 5600 30  0001 C CNN
F 1 "GND" H 4800 5530 30  0001 C CNN
F 2 "" H 4800 5600 60  0000 C CNN
F 3 "" H 4800 5600 60  0000 C CNN
	1    4800 5600
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 51B23FCD
P 5400 6350
F 0 "C3" H 5400 6450 40  0000 L CNN
F 1 "C" H 5406 6265 40  0000 L CNN
F 2 "~" H 5438 6200 30  0000 C CNN
F 3 "~" H 5400 6350 60  0000 C CNN
	1    5400 6350
	1    0    0    -1  
$EndComp
Text Label 5300 6050 2    60   ~ 0
VCC_3V3
$Comp
L GND #PWR9
U 1 1 51B2407C
P 5400 6650
F 0 "#PWR9" H 5400 6650 30  0001 C CNN
F 1 "GND" H 5400 6580 30  0001 C CNN
F 2 "" H 5400 6650 60  0000 C CNN
F 3 "" H 5400 6650 60  0000 C CNN
	1    5400 6650
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 51B2417E
P 5650 6350
F 0 "C4" H 5650 6450 40  0000 L CNN
F 1 "C" H 5656 6265 40  0000 L CNN
F 2 "~" H 5688 6200 30  0000 C CNN
F 3 "~" H 5650 6350 60  0000 C CNN
	1    5650 6350
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 51B24184
P 5900 6350
F 0 "C5" H 5900 6450 40  0000 L CNN
F 1 "C" H 5906 6265 40  0000 L CNN
F 2 "~" H 5938 6200 30  0000 C CNN
F 3 "~" H 5900 6350 60  0000 C CNN
	1    5900 6350
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 51B2418A
P 6150 6350
F 0 "C6" H 6150 6450 40  0000 L CNN
F 1 "C" H 6156 6265 40  0000 L CNN
F 2 "~" H 6188 6200 30  0000 C CNN
F 3 "~" H 6150 6350 60  0000 C CNN
	1    6150 6350
	1    0    0    -1  
$EndComp
Text Label 6450 5150 0    60   ~ 0
BOOT
Text Label 7000 5500 0    60   ~ 0
NRST
Text Label 7450 6100 1    60   ~ 0
VCC_3V3
$Comp
L R R11
U 1 1 51B245C2
P 7200 6500
F 0 "R11" V 7280 6500 40  0000 C CNN
F 1 "R" V 7207 6501 40  0000 C CNN
F 2 "~" V 7130 6500 30  0000 C CNN
F 3 "~" H 7200 6500 30  0000 C CNN
	1    7200 6500
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 51B245CF
P 7450 6500
F 0 "R12" V 7530 6500 40  0000 C CNN
F 1 "R" V 7457 6501 40  0000 C CNN
F 2 "~" V 7380 6500 30  0000 C CNN
F 3 "~" H 7450 6500 30  0000 C CNN
	1    7450 6500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR12
U 1 1 51B245D7
P 7200 6900
F 0 "#PWR12" H 7200 6900 30  0001 C CNN
F 1 "GND" H 7200 6830 30  0001 C CNN
F 2 "" H 7200 6900 60  0000 C CNN
F 3 "" H 7200 6900 60  0000 C CNN
	1    7200 6900
	1    0    0    -1  
$EndComp
Text Label 7200 6250 1    60   ~ 0
BOOT
Text Label 7450 6750 3    60   ~ 0
NRST
Text Notes 7100 5600 0    60   ~ 0
Pull resistors\n
Text Notes 9100 1150 0    60   ~ 0
Voltage regulation
Text Notes 1500 5550 0    60   ~ 0
USB Connector\n
Text Notes 5450 2500 0    60   ~ 0
Microcontroller\n
Text Notes 1950 850  0    60   ~ 0
USB → UART
Text Label 4900 3900 2    60   ~ 0
TX
Text Label 4900 3800 2    60   ~ 0
RX
NoConn ~ 4100 2600
NoConn ~ 4100 2500
NoConn ~ 4100 2400
NoConn ~ 2800 2050
NoConn ~ 2800 1950
NoConn ~ 1500 6200
$Comp
L R R6
U 1 1 51B24A77
P 3150 3850
F 0 "R6" V 3230 3850 40  0000 C CNN
F 1 "R" V 3157 3851 40  0000 C CNN
F 2 "~" V 3080 3850 30  0000 C CNN
F 3 "~" H 3150 3850 30  0000 C CNN
	1    3150 3850
	1    0    0    -1  
$EndComp
$Comp
L LED D4
U 1 1 51B24A7D
P 3150 4300
F 0 "D4" H 3150 4400 50  0000 C CNN
F 1 "LED" H 3150 4200 50  0000 C CNN
F 2 "~" H 3150 4300 60  0000 C CNN
F 3 "~" H 3150 4300 60  0000 C CNN
	1    3150 4300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR4
U 1 1 51B24AF2
P 3150 4500
F 0 "#PWR4" H 3150 4500 30  0001 C CNN
F 1 "GND" H 3150 4430 30  0001 C CNN
F 2 "" H 3150 4500 60  0000 C CNN
F 3 "" H 3150 4500 60  0000 C CNN
	1    3150 4500
	1    0    0    -1  
$EndComp
Text Label 6450 3050 0    60   ~ 0
BOOT1
Text Label 7050 6250 1    60   ~ 0
BOOT1
Text Label 6450 3550 0    60   ~ 0
SDA
Text Label 6450 3450 0    60   ~ 0
SCL
Text Label 7750 6750 3    60   ~ 0
SCL
Text Label 7900 6750 3    60   ~ 0
SDA
$Comp
L R R10
U 1 1 51B24EC1
P 7050 6500
F 0 "R10" V 7130 6500 40  0000 C CNN
F 1 "R" V 7057 6501 40  0000 C CNN
F 2 "~" V 6980 6500 30  0000 C CNN
F 3 "~" H 7050 6500 30  0000 C CNN
	1    7050 6500
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 51B2500D
P 7750 6500
F 0 "R13" V 7830 6500 40  0000 C CNN
F 1 "R" V 7757 6501 40  0000 C CNN
F 2 "~" V 7680 6500 30  0000 C CNN
F 3 "~" H 7750 6500 30  0000 C CNN
	1    7750 6500
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 51B25015
P 7900 6500
F 0 "R14" V 7980 6500 40  0000 C CNN
F 1 "R" V 7907 6501 40  0000 C CNN
F 2 "~" V 7830 6500 30  0000 C CNN
F 3 "~" H 7900 6500 30  0000 C CNN
	1    7900 6500
	1    0    0    -1  
$EndComp
$Sheet
S 7950 2750 550  550 
U 51B25330
F0 "3ch_fetdriver_1" 50
F1 "3ch_fetdriver.sch" 50
F2 "D0" I L 7950 2850 60 
F3 "Q0" I R 8500 2850 60 
F4 "GND" I L 7950 3150 60 
F5 "D1" I L 7950 2950 60 
F6 "Q1" I R 8500 2950 60 
F7 "D2" I L 7950 3050 60 
F8 "Q2" I R 8500 3050 60 
$EndSheet
$Sheet
S 7950 3450 550  550 
U 51B279F6
F0 "3ch_fetdriver_2" 50
F1 "3ch_fetdriver.sch" 50
F2 "D0" I L 7950 3550 60 
F3 "Q0" I R 8500 3550 60 
F4 "GND" I L 7950 3850 60 
F5 "D1" I L 7950 3650 60 
F6 "Q1" I R 8500 3650 60 
F7 "D2" I L 7950 3750 60 
F8 "Q2" I R 8500 3750 60 
$EndSheet
$Sheet
S 7950 4150 550  550 
U 51B287A5
F0 "3ch_fetdriver_3" 50
F1 "3ch_fetdriver.sch" 50
F2 "D0" I L 7950 4250 60 
F3 "Q0" I R 8500 4250 60 
F4 "GND" I L 7950 4550 60 
F5 "D1" I L 7950 4350 60 
F6 "Q1" I R 8500 4350 60 
F7 "D2" I L 7950 4450 60 
F8 "Q2" I R 8500 4450 60 
$EndSheet
$Comp
L GND #PWR13
U 1 1 51B28A28
P 7650 4750
F 0 "#PWR13" H 7650 4750 30  0001 C CNN
F 1 "GND" H 7650 4680 30  0001 C CNN
F 2 "" H 7650 4750 60  0000 C CNN
F 3 "" H 7650 4750 60  0000 C CNN
	1    7650 4750
	1    0    0    -1  
$EndComp
$Sheet
S 9150 2800 550  400 
U 51B29079
F0 "rgbled_1" 50
F1 "rgbled.sch" 50
F2 "CA" I R 9700 2900 60 
F3 "R" I L 9150 2900 60 
F4 "G" I L 9150 3000 60 
F5 "B" I L 9150 3100 60 
$EndSheet
$Sheet
S 9150 3500 550  400 
U 51B29C83
F0 "rgbled_2" 50
F1 "rgbled.sch" 50
F2 "CA" I R 9700 3600 60 
F3 "R" I L 9150 3600 60 
F4 "G" I L 9150 3700 60 
F5 "B" I L 9150 3800 60 
$EndSheet
$Sheet
S 9150 4200 550  400 
U 51B2A046
F0 "rgbled_3" 50
F1 "rgbled.sch" 50
F2 "CA" I R 9700 4300 60 
F3 "R" I L 9150 4300 60 
F4 "G" I L 9150 4400 60 
F5 "B" I L 9150 4500 60 
$EndSheet
$Comp
L JUMPER JP5
U 1 1 51B2A103
P 10100 4300
F 0 "JP5" H 10100 4450 60  0000 C CNN
F 1 "JUMPER" H 10100 4220 40  0000 C CNN
F 2 "~" H 10100 4300 60  0000 C CNN
F 3 "~" H 10100 4300 60  0000 C CNN
	1    10100 4300
	1    0    0    -1  
$EndComp
$Comp
L JUMPER JP4
U 1 1 51B2A2B0
P 10100 3600
F 0 "JP4" H 10100 3750 60  0000 C CNN
F 1 "JUMPER" H 10100 3520 40  0000 C CNN
F 2 "~" H 10100 3600 60  0000 C CNN
F 3 "~" H 10100 3600 60  0000 C CNN
	1    10100 3600
	1    0    0    -1  
$EndComp
$Comp
L JUMPER JP3
U 1 1 51B2A2B6
P 10100 2900
F 0 "JP3" H 10100 3050 60  0000 C CNN
F 1 "JUMPER" H 10100 2820 40  0000 C CNN
F 2 "~" H 10100 2900 60  0000 C CNN
F 3 "~" H 10100 2900 60  0000 C CNN
	1    10100 2900
	1    0    0    -1  
$EndComp
Text Label 10400 4300 0    60   ~ 0
V_EXT
Text Label 10400 3600 0    60   ~ 0
V_EXT
Text Label 10400 2900 0    60   ~ 0
V_EXT
Wire Wire Line
	1400 2600 2800 2600
Wire Wire Line
	1650 1750 1650 2650
Wire Wire Line
	2800 2250 2700 2250
Wire Wire Line
	2700 2250 2700 2600
Connection ~ 2700 2600
Wire Wire Line
	2800 2500 2700 2500
Connection ~ 2700 2500
Wire Wire Line
	2800 2400 2700 2400
Connection ~ 2700 2400
Wire Wire Line
	1900 1850 1900 1950
Wire Wire Line
	1900 1900 2100 1900
Wire Wire Line
	2100 1900 2100 1800
Wire Wire Line
	2100 1800 2800 1800
Connection ~ 1900 1900
Wire Wire Line
	1900 2450 1900 2600
Connection ~ 1900 2600
Wire Wire Line
	1500 6300 1400 6300
Wire Wire Line
	1400 6100 1400 6400
Wire Wire Line
	1400 6100 1500 6100
Connection ~ 1650 2600
Connection ~ 1400 6300
Wire Wire Line
	4100 2050 4150 2050
Wire Wire Line
	4150 2050 4150 2100
Wire Wire Line
	4300 2200 4100 2200
Wire Wire Line
	4100 2300 4300 2300
Wire Wire Line
	2200 3500 2200 3600
Wire Wire Line
	1450 3500 2200 3500
Wire Wire Line
	1600 3600 1600 3500
Connection ~ 1600 3500
Wire Wire Line
	1900 3600 1900 3500
Connection ~ 1900 3500
Wire Wire Line
	2800 1250 1650 1250
Wire Wire Line
	1650 1000 1650 1350
Wire Wire Line
	1650 1000 2800 1000
Connection ~ 1650 1250
Wire Wire Line
	9500 2050 9500 1950
Wire Wire Line
	8450 1450 8950 1450
Wire Wire Line
	8450 1150 8850 1150
Wire Wire Line
	8850 1150 8850 1550
Connection ~ 8850 1450
Wire Wire Line
	10100 1450 10200 1450
Wire Wire Line
	10150 1450 10150 1550
Connection ~ 10150 1450
Wire Wire Line
	10150 2050 10150 1950
Connection ~ 9500 2050
Wire Wire Line
	1400 2600 1400 1750
Wire Wire Line
	1250 1100 2800 1100
Wire Wire Line
	1400 1100 1400 1350
Connection ~ 1400 1100
Wire Wire Line
	8850 1950 8850 2050
Connection ~ 8850 2050
Wire Wire Line
	4800 5500 4900 5500
Wire Wire Line
	4800 5150 4800 5600
Wire Wire Line
	4800 5150 4900 5150
Wire Wire Line
	4900 5250 4800 5250
Connection ~ 4800 5250
Wire Wire Line
	4900 5350 4800 5350
Connection ~ 4800 5350
Wire Wire Line
	4800 5000 4900 5000
Wire Wire Line
	4800 4550 4800 5000
Wire Wire Line
	4700 4550 4900 4550
Wire Wire Line
	4900 4650 4800 4650
Connection ~ 4800 4650
Wire Wire Line
	4900 4750 4800 4750
Connection ~ 4800 4750
Wire Wire Line
	4900 4900 4800 4900
Connection ~ 4800 4900
Connection ~ 4800 4550
Connection ~ 4800 5500
Wire Wire Line
	5300 6050 6150 6050
Wire Wire Line
	5400 6050 5400 6150
Wire Wire Line
	5400 6550 5400 6650
Wire Wire Line
	5400 6600 6150 6600
Wire Wire Line
	5650 6600 5650 6550
Connection ~ 5400 6600
Wire Wire Line
	5900 6600 5900 6550
Connection ~ 5650 6600
Wire Wire Line
	6150 6600 6150 6550
Connection ~ 5900 6600
Wire Wire Line
	5650 6050 5650 6150
Connection ~ 5400 6050
Wire Wire Line
	5900 6050 5900 6150
Connection ~ 5650 6050
Wire Wire Line
	6150 6050 6150 6150
Connection ~ 5900 6050
Wire Wire Line
	1900 1350 1900 1100
Connection ~ 1900 1100
Wire Wire Line
	3150 3500 3150 3600
Wire Wire Line
	7200 6750 7200 6900
Wire Wire Line
	7200 6850 7050 6850
Wire Wire Line
	7050 6850 7050 6750
Connection ~ 7200 6850
Wire Wire Line
	7450 6100 7450 6250
Wire Wire Line
	7950 3150 7650 3150
Wire Wire Line
	7650 3150 7650 4750
Wire Wire Line
	7950 4550 7650 4550
Connection ~ 7650 4550
Wire Wire Line
	7950 3850 7650 3850
Connection ~ 7650 3850
Wire Wire Line
	9800 2900 9700 2900
Wire Wire Line
	9800 3600 9700 3600
Wire Wire Line
	9800 4300 9700 4300
Text Label 8500 2850 0    60   ~ 0
R1
Text Label 8500 2950 0    60   ~ 0
G1
Text Label 8500 3050 0    60   ~ 0
B1
Text Label 8500 3550 0    60   ~ 0
R2
Text Label 8500 3650 0    60   ~ 0
G2
Text Label 8500 3750 0    60   ~ 0
B2
Text Label 8500 4250 0    60   ~ 0
R3
Text Label 8500 4350 0    60   ~ 0
G3
Text Label 8500 4450 0    60   ~ 0
B3
Text Label 9150 4500 2    60   ~ 0
B3
Text Label 9150 4400 2    60   ~ 0
G3
Text Label 9150 4300 2    60   ~ 0
R3
Text Label 9150 3800 2    60   ~ 0
B2
Text Label 9150 3700 2    60   ~ 0
G2
Text Label 9150 3600 2    60   ~ 0
R2
Text Label 9150 3100 2    60   ~ 0
B1
Text Label 9150 3000 2    60   ~ 0
G1
Text Label 9150 2900 2    60   ~ 0
R1
$Comp
L MICROPHONE MIC1
U 1 1 51B2EA0E
P 5500 1900
F 0 "MIC1" H 5600 2125 60  0000 C CNN
F 1 "MICROPHONE" H 5625 1650 60  0000 C CNN
F 2 "~" H 5625 1650 60  0000 C CNN
F 3 "~" H 5625 1650 60  0000 C CNN
	1    5500 1900
	-1   0    0    -1  
$EndComp
$Comp
L NPN Q1
U 1 1 51B2EA1D
P 6850 1850
F 0 "Q1" H 6850 1700 50  0000 R CNN
F 1 "NPN" H 6850 2000 50  0000 R CNN
F 2 "~" H 6850 1850 60  0000 C CNN
F 3 "~" H 6850 1850 60  0000 C CNN
	1    6850 1850
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 51B2EA8D
P 6550 1500
F 0 "R8" V 6630 1500 40  0000 C CNN
F 1 "R" V 6557 1501 40  0000 C CNN
F 2 "~" V 6480 1500 30  0000 C CNN
F 3 "~" H 6550 1500 30  0000 C CNN
	1    6550 1500
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 51B2EC1F
P 6250 1850
F 0 "C7" H 6250 1950 40  0000 L CNN
F 1 "C" H 6256 1765 40  0000 L CNN
F 2 "~" H 6288 1700 30  0000 C CNN
F 3 "~" H 6250 1850 60  0000 C CNN
	1    6250 1850
	0    -1   -1   0   
$EndComp
$Comp
L R R9
U 1 1 51B2EDD9
P 6950 1300
F 0 "R9" V 7030 1300 40  0000 C CNN
F 1 "R" V 6957 1301 40  0000 C CNN
F 2 "~" V 6880 1300 30  0000 C CNN
F 3 "~" H 6950 1300 30  0000 C CNN
	1    6950 1300
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 51B2EDDF
P 5950 1500
F 0 "R7" V 6030 1500 40  0000 C CNN
F 1 "R" V 5957 1501 40  0000 C CNN
F 2 "~" V 5880 1500 30  0000 C CNN
F 3 "~" H 5950 1500 30  0000 C CNN
	1    5950 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1850 6650 1850
Wire Wire Line
	5850 1850 6050 1850
Wire Wire Line
	5950 1750 5950 1850
Connection ~ 5950 1850
Wire Wire Line
	6550 1750 6550 1850
Connection ~ 6550 1850
Wire Wire Line
	6950 1550 6950 1650
Wire Wire Line
	6750 1600 7050 1600
Wire Wire Line
	6750 1600 6750 1200
Wire Wire Line
	6750 1200 6550 1200
Wire Wire Line
	6550 1200 6550 1250
Connection ~ 6950 1600
Wire Wire Line
	6950 950  6950 1050
Wire Wire Line
	5850 950  6950 950 
Wire Wire Line
	5950 950  5950 1250
Wire Wire Line
	5850 1950 5950 1950
Wire Wire Line
	5950 1950 5950 2100
Wire Wire Line
	5950 2100 6950 2100
Wire Wire Line
	6950 2050 6950 2150
$Comp
L GND #PWR11
U 1 1 51B27ED0
P 6950 2150
F 0 "#PWR11" H 6950 2150 30  0001 C CNN
F 1 "GND" H 6950 2080 30  0001 C CNN
F 2 "" H 6950 2150 60  0000 C CNN
F 3 "" H 6950 2150 60  0000 C CNN
	1    6950 2150
	1    0    0    -1  
$EndComp
Connection ~ 6950 2100
Text Label 7050 1600 0    60   ~ 0
MIC
Text Label 5850 950  2    60   ~ 0
VCC_3V3
Connection ~ 5950 950 
Text Label 4900 2850 2    60   ~ 0
MIC
$Comp
L CONN_4 P1
U 1 1 51B29D39
P 1600 6950
F 0 "P1" V 1550 6950 50  0000 C CNN
F 1 "CONN_4" V 1650 6950 50  0000 C CNN
F 2 "~" H 1600 6950 60  0000 C CNN
F 3 "~" H 1600 6950 60  0000 C CNN
	1    1600 6950
	1    0    0    -1  
$EndComp
Text Label 1250 6900 2    60   ~ 0
R1
Text Label 1250 7000 2    60   ~ 0
G1
Text Label 1250 7100 2    60   ~ 0
B1
Text Label 1250 6800 2    60   ~ 0
V_EXT
$Comp
L CONN_4 P3
U 1 1 51B2AD45
P 2400 6950
F 0 "P3" V 2350 6950 50  0000 C CNN
F 1 "CONN_4" V 2450 6950 50  0000 C CNN
F 2 "~" H 2400 6950 60  0000 C CNN
F 3 "~" H 2400 6950 60  0000 C CNN
	1    2400 6950
	1    0    0    -1  
$EndComp
Text Label 2050 6900 2    60   ~ 0
R2
Text Label 2050 7000 2    60   ~ 0
G2
Text Label 2050 7100 2    60   ~ 0
B2
Text Label 2050 6800 2    60   ~ 0
V_EXT
$Comp
L CONN_4 P5
U 1 1 51B2ADB2
P 3200 6950
F 0 "P5" V 3150 6950 50  0000 C CNN
F 1 "CONN_4" V 3250 6950 50  0000 C CNN
F 2 "~" H 3200 6950 60  0000 C CNN
F 3 "~" H 3200 6950 60  0000 C CNN
	1    3200 6950
	1    0    0    -1  
$EndComp
Text Label 2850 6900 2    60   ~ 0
R3
Text Label 2850 7000 2    60   ~ 0
G3
Text Label 2850 7100 2    60   ~ 0
B3
Text Label 2850 6800 2    60   ~ 0
V_EXT
Text Notes 2000 6650 0    60   ~ 0
RGB Stripes
$Comp
L CONN_6 P7
U 1 1 51BA58AD
P 10550 5850
F 0 "P7" V 10500 5850 60  0000 C CNN
F 1 "CONN_6" V 10600 5850 60  0000 C CNN
F 2 "" H 10550 5850 60  0000 C CNN
F 3 "" H 10550 5850 60  0000 C CNN
	1    10550 5850
	1    0    0    -1  
$EndComp
Text Label 10200 5600 2    60   ~ 0
NRST
Text Label 10200 5700 2    60   ~ 0
BOOT
$Comp
L JUMPER3 JP1
U 1 1 51BA60EC
P 6750 5500
F 0 "JP1" H 6800 5400 40  0000 L CNN
F 1 "JUMPER3" H 6750 5600 40  0000 C CNN
F 2 "~" H 6750 5500 60  0000 C CNN
F 3 "~" H 6750 5500 60  0000 C CNN
	1    6750 5500
	-1   0    0    1   
$EndComp
Wire Wire Line
	6450 5250 6750 5250
Wire Wire Line
	6750 5250 6750 5400
Wire Wire Line
	6500 5500 6450 5500
Wire Wire Line
	6450 5500 6450 5550
Text Label 10200 5800 2    60   ~ 0
RX
Text Label 10200 5900 2    60   ~ 0
TX
Text Label 10200 6000 2    60   ~ 0
VCC_3V3
$Comp
L GND #PWR15
U 1 1 51BA7B51
P 10150 6200
F 0 "#PWR15" H 10150 6200 30  0001 C CNN
F 1 "GND" H 10150 6130 30  0001 C CNN
F 2 "" H 10150 6200 60  0000 C CNN
F 3 "" H 10150 6200 60  0000 C CNN
	1    10150 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 6100 10150 6100
Wire Wire Line
	10150 6100 10150 6200
$Comp
L GND #PWR10
U 1 1 51BA8251
P 6450 5550
F 0 "#PWR10" H 6450 5550 30  0001 C CNN
F 1 "GND" H 6450 5480 30  0001 C CNN
F 2 "" H 6450 5550 60  0000 C CNN
F 3 "" H 6450 5550 60  0000 C CNN
	1    6450 5550
	1    0    0    -1  
$EndComp
$Comp
L CONN_3 K1
U 1 1 51BA8AE1
P 10550 6700
F 0 "K1" V 10500 6700 50  0000 C CNN
F 1 "CONN_3" V 10600 6700 40  0000 C CNN
F 2 "" H 10550 6700 60  0000 C CNN
F 3 "" H 10550 6700 60  0000 C CNN
	1    10550 6700
	1    0    0    -1  
$EndComp
Text Label 10200 6700 2    60   ~ 0
SCL
Text Label 10200 6800 2    60   ~ 0
SDA
Text Label 10200 6600 2    60   ~ 0
PULLUP
$Comp
L JUMPER3 JP2
U 1 1 51BA9689
P 8150 6100
F 0 "JP2" H 8200 6000 40  0000 L CNN
F 1 "JUMPER3" H 8150 6200 40  0000 C CNN
F 2 "~" H 8150 6100 60  0000 C CNN
F 3 "~" H 8150 6100 60  0000 C CNN
	1    8150 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 6100 8050 6100
Wire Wire Line
	7750 6100 7750 6250
Wire Wire Line
	7900 6250 7900 6100
Connection ~ 7900 6100
Text Label 8250 6400 0    60   ~ 0
PULLUP
Wire Wire Line
	8250 6400 8150 6400
Wire Wire Line
	8150 6400 8150 6350
Text Label 8250 5800 0    60   ~ 0
VCC_3V3
Wire Wire Line
	8250 5800 8150 5800
Wire Wire Line
	8150 5800 8150 5850
Text Notes 10850 6250 1    60   ~ 0
Programming port
Text Notes 10850 6850 1    60   ~ 0
I2C Bus
$Comp
L CONN_2 P4
U 1 1 51BAB12F
P 3000 6050
F 0 "P4" V 2950 6050 40  0000 C CNN
F 1 "CONN_2" V 3050 6050 40  0000 C CNN
F 2 "" H 3000 6050 60  0000 C CNN
F 3 "" H 3000 6050 60  0000 C CNN
	1    3000 6050
	-1   0    0    -1  
$EndComp
Text Label 3350 5950 0    60   ~ 0
V_EXT
Text Label 3150 3500 2    60   ~ 0
V_EXT
$Comp
L GND #PWR5
U 1 1 51BAB267
P 3450 6250
F 0 "#PWR5" H 3450 6250 30  0001 C CNN
F 1 "GND" H 3450 6180 30  0001 C CNN
F 2 "" H 3450 6250 60  0000 C CNN
F 3 "" H 3450 6250 60  0000 C CNN
	1    3450 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 6150 3450 6150
Wire Wire Line
	3450 6150 3450 6250
Text Notes 3000 5750 0    60   ~ 0
V Ext
Text Label 6450 4200 0    60   ~ 0
LR1
Text Label 6450 4300 0    60   ~ 0
LG1
Text Label 6450 4400 0    60   ~ 0
LB1
Text Label 4900 2950 2    60   ~ 0
LR2
Text Label 4900 3050 2    60   ~ 0
LG2
Text Label 4900 3150 2    60   ~ 0
LB2
Text Label 4900 3450 2    60   ~ 0
LR3
Text Label 4900 3550 2    60   ~ 0
LG3
Text Label 6450 2850 0    60   ~ 0
LB3
Text Label 7950 2850 2    60   ~ 0
LR1
Text Label 7950 2950 2    60   ~ 0
LG1
Text Label 7950 3050 2    60   ~ 0
LB1
Text Label 7950 3550 2    60   ~ 0
LR2
Text Label 7950 3650 2    60   ~ 0
LG2
Text Label 7950 3750 2    60   ~ 0
LB2
Text Label 7950 4250 2    60   ~ 0
LR3
Text Label 7950 4350 2    60   ~ 0
LG3
Text Label 7950 4450 2    60   ~ 0
LB3
Wire Wire Line
	8550 1550 8550 1450
Connection ~ 8550 1450
Wire Wire Line
	8550 1950 8550 2150
Connection ~ 8550 2050
Wire Wire Line
	10150 2050 8550 2050
$Comp
L CONN_6 P6
U 1 1 51BAEA50
P 3700 4250
F 0 "P6" V 3650 4250 60  0000 C CNN
F 1 "CONN_6" V 3750 4250 60  0000 C CNN
F 2 "" H 3700 4250 60  0000 C CNN
F 3 "" H 3700 4250 60  0000 C CNN
	1    3700 4250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4900 4400 4050 4400
Wire Wire Line
	4050 4300 4900 4300
Wire Wire Line
	4900 4200 4050 4200
$Comp
L GND #PWR6
U 1 1 51BAEF2B
P 4100 4600
F 0 "#PWR6" H 4100 4600 30  0001 C CNN
F 1 "GND" H 4100 4530 30  0001 C CNN
F 2 "" H 4100 4600 60  0000 C CNN
F 3 "" H 4100 4600 60  0000 C CNN
	1    4100 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4500 4100 4500
Wire Wire Line
	4100 4500 4100 4600
Wire Wire Line
	4050 4100 4700 4100
Wire Wire Line
	4700 4100 4700 3350
Wire Wire Line
	4700 3350 4900 3350
Wire Wire Line
	4900 3250 4600 3250
Wire Wire Line
	4600 3250 4600 4000
Wire Wire Line
	4600 4000 4050 4000
$EndSCHEMATC
