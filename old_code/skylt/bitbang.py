Nuffra = (0b0111111, 0b0001100, 0b1110110, 0b1011110, 0b1001101, 0b1011011, 0b1111011, 0b0001110, 0b1111111, 0b1001111, 
	0b1101111, 0b1111001, 0b0110011, 0b1111100, 0b1110011, 0b1100011)

def SendData(data):
	global DATA
	for bit in range(7,-1,-1):
		DATA = (1<<bit) & data
		Send()
		Clock()

def Clock():
	global CLK
	CLK = True
	Send()
	CLK = False
	Send()

def Strobe():
	global STROBE
	STROBE = True
	Send()
	STROBE = False
	Send()


OE = True
CLK = False
STROBE = False
DATA = False
def Send():
	global OE, CLK, STROBE, DATA
	s.write(chr(sum([1<<bit for bit in range(4) if (STROBE, DATA, CLK, OE)[bit]])))
