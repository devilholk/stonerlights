#encoding=utf-8

from lampcontrol import *
from random import random, randint
import time
s=slampa()
q=0
while(1):
	rot(s)
	q+=1
	if q>=3:
		rot2(s)
		for c in range(8):
			s[c][9]=0
		q=0

	if random() < (time.time() % 10.0)/10.0:
		c=randint(0,7)
		s[c][9] = randint(0,7)


	update(s)
	sleep(0.1)
