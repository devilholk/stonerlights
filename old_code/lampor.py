import serial
import random
import time
port = serial.Serial("/dev/ttyUSB0", baudrate=460800)

Colors=['white', 'black', 'red', 'green', 'blue', 'cyan', 'magenta', 'yellow', 'orange']

class Led():
	def __init__(self):
		self.r=0.0
		self.g=0.0
		self.b=0.0

	def Wheel(self, pos):
		pos*=3
		frac=pos-int(pos)
		if pos < 1.0 or pos >= 3.0:
			self.r=1.0-frac
			self.g=frac
			self.b=0.0
		elif pos < 2.0:
			self.r=0.0
			self.g=1.0-frac
			self.b=frac
		elif pos < 3.0:
			self.r=frac
			self.g=0.0
			self.b=1.0-frac

	def Preset(self, name):
		if name=='white': self.r,self.g,self.b = 1.0, 1.0, 1.0
		elif name=='black': self.r,self.g,self.b =0.0, 0.0, 0.0
		elif name=='red': self.r,self.g,self.b = 1.0, 0.0, 0.0
		elif name=='green': self.r,self.g,self.b = 0.0, 1.0, 0.0
		elif name=='blue': self.r,self.g,self.b = 0.0, 0.0, 1.0
		elif name=='cyan': self.r,self.g,self.b = 0.0, 1.0, 1.0
		elif name=='magenta': self.r,self.g,self.b = 1.0, 0.0, 1.0
		elif name=='yellow': self.r,self.g,self.b = 1.0, 1.0, 0.0
		elif name=='orange': self.r,self.g,self.b = 1.0, 0.5, 0.0


	def __str__(self):
		r,g,b=int(self.r*0xFFF), int(self.g*0xFFF), int(self.b*0xFFF)
		pwm = lambda x: chr(0) + chr(0) + chr(x & 0xFF) + chr((x>>8) & 0xf)
		return pwm(r) + pwm(g) + pwm(b)

Lampor = [Led() for i in range(5)]

def Update():
	global Lampor
	data = chr(6)
	for led in Lampor:
		data+=str(led)
	data+=chr(0)*4
	port.write(data)
	port.flush()
	time.sleep(0.01)


def Reset():
	port.setRTS(True)
	time.sleep(0.01)
	port.setRTS(False)
	time.sleep(0.01)


Reset()



while(0):
	for lampa in Lampor:
		lampa.Preset('white')
	Update()
	time.sleep(0.02)

	for lampa in Lampor:
		lampa.Preset('black')
	Update()
	time.sleep(0.01)

	for lampa in Lampor:
		lampa.Preset('orange')
	Update()
	time.sleep(0.02)

	for lampa in Lampor:
		lampa.Preset('black')
	Update()
	time.sleep(0.01)


col=0.0
while(1):
	col+=0.01
	if col > 1.0: col-=int(col)
	for i in range(5):
		ic=col+i*0.2
		if ic>1.0: ic-=int(ic)
		Lampor[i].Wheel(ic)
	Update()
	time.sleep(0.01)
