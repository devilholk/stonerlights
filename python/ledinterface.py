#encoding=utf-8

class LED_interface():
	leds = {}
	def attach(self, led):
		led.controller=self
		self.leds[led] = True
	
	def detach(self, led):
		led.controller=None
		del(self.leds[led])

	def set_state(self, led, state):
		self.leds[led] = state
	
	def get_state(self, led):
		return self.leds[led]
	
	def update(self, led):
		pass
		
