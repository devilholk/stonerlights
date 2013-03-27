#encoding=utf-8

from ledbase import *
from ledinterface import *

import serial

class Pointlight(LED):
	address = 0
	bits = 12
	def __init__(self, address):
		self.address = address

class SerialLight(LED_interface):
	def __init__(self, port, baudrate=460800):
		self.port = serial.Serial(port, baudrate)
	
	def update(self, led, r, g, b):
		top = (1<<led.bits)-1
		i16 = lambda n: chr(n&0xFF)+chr((n>>8)&0xFF)
		i = lambda n: i16(int(top*n))
		data = chr(led.address & 0xFF) + i(r) + i(g) + i(b)
		self.port.write(data)
		
lilla_lampan = Pointlight(1)
ljusslinga = Pointlight(2)

crf_conference = SerialLight('/dev/serial/by-path/pci-0000:00:10.3-usb-0:1:1.0-port0', 115200)
crf_conference.attach(lilla_lampan)
crf_conference.attach(ljusslinga)

ljusslinga.rcomp, ljusslinga.gcomp, ljusslinga.bcomp = 1.0, 0.8, 0.65

import time

def sintest(leds, w):
	v=0.0
	q=0.0
	while(1):
		v+=0.01
		for l in leds:
			q+=0.1
			l.r=math.sin(q*0.2+v)*0.5+0.5
			l.g=math.sin(q*0.34+v*1.23)*0.5+0.5
			l.b=math.sin(q*-.3+v*1.84)*0.5+0.5
			l.update()

		time.sleep(w)

def test(l, r,g,b):
	global rcomp,gcomp,bcomp
	l.r=math.pow(r*rcomp,2.5)
	l.g=math.pow(g*gcomp,2.5)
	l.b=math.pow(b*bcomp,2.5)
	l.update()

sintest( (ljusslinga, lilla_lampan), 0.01 )