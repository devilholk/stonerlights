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
Sheet 5 7
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
L PLCC6XRGBCT U4
U 1 1 51B29101
P 4350 3200
AR Path="/51B29079/51B29101" Ref="U4"  Part="1" 
AR Path="/51B29C83/51B29101" Ref="U5"  Part="1" 
AR Path="/51B2A046/51B29101" Ref="U6"  Part="1" 
F 0 "U4" H 4350 3650 60  0000 C CNN
F 1 "PLCC6XRGBCT" H 4350 2700 60  0000 C CNN
F 2 "" H 4350 3200 60  0000 C CNN
F 3 "" H 4350 3200 60  0000 C CNN
	1    4350 3200
	-1   0    0    1   
$EndComp
$Comp
L R R24
U 1 1 51B29110
P 3750 2900
AR Path="/51B29079/51B29110" Ref="R24"  Part="1" 
AR Path="/51B29C83/51B29110" Ref="R27"  Part="1" 
AR Path="/51B2A046/51B29110" Ref="R30"  Part="1" 
F 0 "R24" V 3830 2900 40  0000 C CNN
F 1 "R" V 3757 2901 40  0000 C CNN
F 2 "~" V 3680 2900 30  0000 C CNN
F 3 "~" H 3750 2900 30  0000 C CNN
	1    3750 2900
	0    -1   -1   0   
$EndComp
$Comp
L R R25
U 1 1 51B29140
P 3750 3150
AR Path="/51B29079/51B29140" Ref="R25"  Part="1" 
AR Path="/51B29C83/51B29140" Ref="R28"  Part="1" 
AR Path="/51B2A046/51B29140" Ref="R31"  Part="1" 
F 0 "R25" V 3830 3150 40  0000 C CNN
F 1 "R" V 3757 3151 40  0000 C CNN
F 2 "~" V 3680 3150 30  0000 C CNN
F 3 "~" H 3750 3150 30  0000 C CNN
	1    3750 3150
	0    -1   -1   0   
$EndComp
$Comp
L R R26
U 1 1 51B29146
P 3750 3400
AR Path="/51B29079/51B29146" Ref="R26"  Part="1" 
AR Path="/51B29C83/51B29146" Ref="R29"  Part="1" 
AR Path="/51B2A046/51B29146" Ref="R32"  Part="1" 
F 0 "R26" V 3830 3400 40  0000 C CNN
F 1 "R" V 3757 3401 40  0000 C CNN
F 2 "~" V 3680 3400 30  0000 C CNN
F 3 "~" H 3750 3400 30  0000 C CNN
	1    3750 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3500 3400 3400 3400
Wire Wire Line
	3400 3400 3400 2900
Wire Wire Line
	3500 3150 3400 3150
Connection ~ 3400 3150
Connection ~ 3400 2900
Wire Wire Line
	3300 2900 3500 2900
Text HLabel 3300 2900 0    60   Input ~ 0
CA
Text HLabel 4700 2900 2    60   Input ~ 0
R
Text HLabel 4700 3150 2    60   Input ~ 0
G
Text HLabel 4700 3400 2    60   Input ~ 0
B
$EndSCHEMATC
