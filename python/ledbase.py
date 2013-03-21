#encoding=utf-8

R, G, B = 1, 2, 4

Presets = {
	'white':		(1.0, 1.0, 1.0),
	'black':		(0.0, 0.0, 0.0),
	'red':		(1.0, 0.0, 0.0),
	'orange':	(1.0, 0.5, 0.0),
	'yellow':	(1.0, 1.0, 0.0),
	'green':		(0.0, 1.0, 0.0),
	'cyan':		(0.0, 1.0, 1.0),
	'blue':		(0.0, 0.0, 1.0),
	'magenta':	(1.0, 0.0, 1.0),
	'white':		(1.0, 1.0, 1.0)
}

class LED():
	channels = R | G | B
	bits = 1
	r, g, b = 0.0, 0.0, 0.0
	controller = None
	
	def update(self):
		if self.controller != None:
			self.controller.update(self)

	def Preset(self, name):
		self.r, self.g, self.b = Presets[name]

	

class LED_array(LED):
	width, height = 1, 1
	leds = None
