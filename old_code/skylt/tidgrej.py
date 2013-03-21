import datetime, serial, time

s= serial.Serial("/dev/serial/by-id/usb-FTDI_FT232R_USB_UART_AE009C7E-if00-port0", 460800)
s.setRTS(True)
s.setRTS(False)

exec(open("bitbang.py"))

while(True):
	t = datetime.datetime.now()
	hdsec = int(t.microsecond / 10000)
	#SendData(Nuffra[int(hdsec) % 10])
	#SendData(Nuffra[int(hdsec/10)])
	#SendData(Nuffra[t.second % 10])
	#SendData(Nuffra[int(t.second / 10)])
	#SendData(Nuffra[t.minute % 10])
	#SendData(Nuffra[int(t.minute / 10)])
	#SendData(Nuffra[t.hour % 10])
	#SendData(Nuffra[int(t.hour / 10)])

	SendData(Nuffra[t.second % 10])
	SendData(Nuffra[int(t.second/10)])
	SendData(0)
	SendData(Nuffra[t.minute % 10])
	SendData(Nuffra[int(t.minute / 10)])
	SendData(0)
	SendData(Nuffra[t.hour % 10])
	SendData(Nuffra[int(t.hour / 10)])


	Strobe()
	time.sleep(0.1)
