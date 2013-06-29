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
Sheet 2 7
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
L MOSFET_N Q2
U 1 1 51B25338
P 2900 1850
AR Path="/51B25330/51B25338" Ref="Q2"  Part="1" 
AR Path="/51B279F6/51B25338" Ref="Q5"  Part="1" 
AR Path="/51B287A5/51B25338" Ref="Q8"  Part="1" 
F 0 "Q2" H 2910 2020 60  0000 R CNN
F 1 "MOSFET_N" H 2910 1700 60  0000 R CNN
F 2 "~" H 2900 1850 60  0000 C CNN
F 3 "~" H 2900 1850 60  0000 C CNN
	1    2900 1850
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 51B25347
P 2350 2250
AR Path="/51B25330/51B25347" Ref="R15"  Part="1" 
AR Path="/51B279F6/51B25347" Ref="R18"  Part="1" 
AR Path="/51B287A5/51B25347" Ref="R21"  Part="1" 
F 0 "R15" V 2430 2250 40  0000 C CNN
F 1 "R" V 2357 2251 40  0000 C CNN
F 2 "~" V 2280 2250 30  0000 C CNN
F 3 "~" H 2350 2250 30  0000 C CNN
	1    2350 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2500 2350 2600
Wire Wire Line
	2350 2600 3050 2600
Connection ~ 3000 2600
Wire Wire Line
	2250 1850 2700 1850
Wire Wire Line
	2350 1850 2350 2000
Text HLabel 2250 1850 0    60   Input ~ 0
D0
Text HLabel 3050 1600 2    60   Input ~ 0
Q0
Wire Wire Line
	3050 1600 3000 1600
Wire Wire Line
	3000 1600 3000 1650
Connection ~ 2350 1850
Text HLabel 3050 2600 2    60   Input ~ 0
GND
Wire Wire Line
	3000 2050 3000 2600
$Comp
L MOSFET_N Q3
U 1 1 51B2558E
P 4250 1850
AR Path="/51B25330/51B2558E" Ref="Q3"  Part="1" 
AR Path="/51B279F6/51B2558E" Ref="Q6"  Part="1" 
AR Path="/51B287A5/51B2558E" Ref="Q9"  Part="1" 
F 0 "Q3" H 4260 2020 60  0000 R CNN
F 1 "MOSFET_N" H 4260 1700 60  0000 R CNN
F 2 "~" H 4250 1850 60  0000 C CNN
F 3 "~" H 4250 1850 60  0000 C CNN
	1    4250 1850
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 51B25594
P 3700 2250
AR Path="/51B25330/51B25594" Ref="R16"  Part="1" 
AR Path="/51B279F6/51B25594" Ref="R19"  Part="1" 
AR Path="/51B287A5/51B25594" Ref="R22"  Part="1" 
F 0 "R16" V 3780 2250 40  0000 C CNN
F 1 "R" V 3707 2251 40  0000 C CNN
F 2 "~" V 3630 2250 30  0000 C CNN
F 3 "~" H 3700 2250 30  0000 C CNN
	1    3700 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2500 3700 2600
Wire Wire Line
	3700 2600 4400 2600
Connection ~ 4350 2600
Wire Wire Line
	3600 1850 4050 1850
Wire Wire Line
	3700 1850 3700 2000
Text HLabel 3600 1850 0    60   Input ~ 0
D1
Text HLabel 4400 1600 2    60   Input ~ 0
Q1
Wire Wire Line
	4400 1600 4350 1600
Wire Wire Line
	4350 1600 4350 1650
Connection ~ 3700 1850
Text HLabel 4400 2600 2    60   Input ~ 0
GND
Wire Wire Line
	4350 2050 4350 2600
$Comp
L MOSFET_N Q4
U 1 1 51B255A6
P 5650 1850
AR Path="/51B25330/51B255A6" Ref="Q4"  Part="1" 
AR Path="/51B279F6/51B255A6" Ref="Q7"  Part="1" 
AR Path="/51B287A5/51B255A6" Ref="Q10"  Part="1" 
F 0 "Q4" H 5660 2020 60  0000 R CNN
F 1 "MOSFET_N" H 5660 1700 60  0000 R CNN
F 2 "~" H 5650 1850 60  0000 C CNN
F 3 "~" H 5650 1850 60  0000 C CNN
	1    5650 1850
	1    0    0    -1  
$EndComp
$Comp
L R R17
U 1 1 51B255AC
P 5100 2250
AR Path="/51B25330/51B255AC" Ref="R17"  Part="1" 
AR Path="/51B279F6/51B255AC" Ref="R20"  Part="1" 
AR Path="/51B287A5/51B255AC" Ref="R23"  Part="1" 
F 0 "R17" V 5180 2250 40  0000 C CNN
F 1 "R" V 5107 2251 40  0000 C CNN
F 2 "~" V 5030 2250 30  0000 C CNN
F 3 "~" H 5100 2250 30  0000 C CNN
	1    5100 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2500 5100 2600
Wire Wire Line
	5100 2600 5800 2600
Connection ~ 5750 2600
Wire Wire Line
	5000 1850 5450 1850
Wire Wire Line
	5100 1850 5100 2000
Text HLabel 5000 1850 0    60   Input ~ 0
D2
Text HLabel 5800 1600 2    60   Input ~ 0
Q2
Wire Wire Line
	5800 1600 5750 1600
Wire Wire Line
	5750 1600 5750 1650
Connection ~ 5100 1850
Text HLabel 5800 2600 2    60   Input ~ 0
GND
Wire Wire Line
	5750 2050 5750 2600
$EndSCHEMATC
