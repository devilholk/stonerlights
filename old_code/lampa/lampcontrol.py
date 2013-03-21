#encoding=utf-8

from serial import Serial
from time import sleep

port=Serial("/dev/serial/by-id/usb-FTDI_FT232R_USB_UART_A800cFTs-if00-port0", baudrate=115200)

slampa = lambda:[[0] * 10 for i in range(8)]

def update(data):
	r = (25, 28, 31, 18, 21, 9, 12, 15, 2, 5)
	g = (26, 29, 16, 19, 22, 10, 13, 0, 3, 6)
	b = (27, 30, 17, 20, 23, 11, 14, 1, 4, 7)

	def map(data):
		res=''
		for row in data:
			num=0
			for col in range(10):
				if row[col] & 1: num|=1<<r[col]
				if row[col] & 2: num|=1<<g[col]
				if row[col] & 4: num|=1<<b[col]
			
			res+=chr((num>>24)&0xFF)+chr((num>>16)&0xFF)+chr((num>>8)&0xFF)+chr(num&0xFF)
		return res


	port.setRTS(True)
	port.write(map(data))
	sleep(0.02)
	port.setRTS(False)
	
def rot(data):
	data.append(data.pop(0))

def rot2(data):
	for r in range(8):
		data[r].append(data[r].pop(0))

