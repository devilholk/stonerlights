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
	
	def update(self, led):
		top = (1<<led.bits)-1
		i16 = lambda n: chr((n>>8)&0xFF)+chr(n&0xFF)
		i = lambda n: i16(int(top*n))
		data = chr(led.address & 0xFF) + i(led.r) + i(led.g) + i(led.b)
		self.port.write(data)
		
lilla_lampan = Pointlight(1)
ljusslinga = Pointlight(2)

crf_conference = SerialLight('/dev/serial/by-id/usb-FTDI_FT232R_USB_UART_AE009C7E-if00-port0', 115200)
crf_conference.attach(lilla_lampan)
crf_conference.attach(ljusslinga)


ljusslinga.Preset('orange')
ljusslinga.update()
