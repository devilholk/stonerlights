#encoding=utf-8
import math
R, G, B = 1, 2, 4

Presets = {
	'white':	(1.0, 1.0, 1.0),
	'black':	(0.0, 0.0, 0.0),
	'red':		(1.0, 0.0, 0.0),
	'orange':	(1.0, 0.5, 0.0),
	'yellow':	(1.0, 1.0, 0.0),
	'green':	(0.0, 1.0, 0.0),
	'cyan':		(0.0, 1.0, 1.0),
	'blue':		(0.0, 0.0, 1.0),
	'magenta':	(1.0, 0.0, 1.0),
	'white':	(1.0, 1.0, 1.0)
}

class LED():
	channels = R | G | B
	bits = 1
	r, g, b = 0.0, 0.0, 0.0
	rcomp, gcomp, bcomp = 1.0, 1.0, 1.0
	e = 2.5
	controller = None
	
	def update(self):
		if self.controller != None:
			
			r = self.r * self.rcomp
			g=self.g * self.gcomp
			b=self.b * self.bcomp
			if r > 1.0: r = 1.0
			if r < 0.0: r = 0.0
			if g > 1.0: g = 1.0
			if g < 0.0: g = 0.0
			if b > 1.0: b = 1.0
			if b < 0.0: b = 0.0
			r=math.pow(r, self.e)
			g=math.pow(g, self.e)
			b=math.pow(b, self.e)

			self.controller.update(self, r, g, b)

	def Preset(self, name, update=True):
		self.r, self.g, self.b = Presets[name]
		if update: 
			self.update()
	

class LED_array(LED):
	width, height = 1, 1
	leds = None
