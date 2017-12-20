#serialRead.py
import serial
import io
import time
import os
import csv
import autopy.key as key

'''
K_ALT = 65513
K_BACKSPACE = 65288
K_CAPSLOCK = 65510
K_CONTROL = 65507
K_DELETE = 65535
K_DOWN = 65364
K_END = 65367
K_ESCAPE = 65307
K_F1 = 65470
K_F10 = 65479
K_F11 = 65480
K_F12 = 65481
K_F2 = 65471
K_F3 = 65472
K_F4 = 65473
K_F5 = 65474
K_F6 = 65475
K_F7 = 65476
K_F8 = 65477
K_F9 = 65478
K_HOME = 65360
K_LEFT = 65361
K_META = 65515
K_PAGEDOWN = 65366
K_PAGEUP = 65365
K_RETURN = 65293
K_RIGHT = 65363
K_SHIFT = 65505
K_UP = 65362
MOD_ALT = 8
MOD_CONTROL = 4
MOD_META = 64
MOD_NONE = 0
MOD_SHIFT = 1

30 = v
29 = c
28 = x
27 = Space
26 = right
25 = left
24 = down
23 = up
'''
#P1_UP_KEY = "w"
#P1_DOWN_KEY = "s"
#P1_LEFT_KEY = "a"
#P1_RIGHT_KEY = "d"
P1_1_KEY = " "#"z"
P1_2_KEY = "x"
P1_3_KEY = "c"
P1_4_KEY = "v"
P1_5_KEY = "b"

def strToInt(inStr):
	outVal = 0
	for i in range(0,len(inStr)):
		outVal += (ord(inStr[i]) - 48) * (10**(len(inStr)-i))
	return outVal



ser = serial.Serial('/dev/ttyACM0',57600)
ser.close()
ser.open()
while True:
	ser.flushInput()
	ser.flushOutput()
	#time.sleep(5)
	incoming = ser.readline().strip()
	#print('Received %s' %incoming)
	inputString = ("%s"%incoming)
	parseStringReader = csv.reader([inputString], skipinitialspace=True)
	inStringArray = parseStringReader.next()
	
	if(len(inStringArray) == 0):
		#print "array length zero"
		continue
	elif(inStringArray[0] == '0'):#Call new game
		os.system("cd /home/simon/RetroPie/scripts; ./runRetroArchGame.py " + inputString)

	else:#controls for now
		keysHit = strToInt(inStringArray[0])

		if(keysHit & (0b1 << 1)):
			#key.type_string(P1_5_KEY,0)
			#key.tap(long(ord(P1_5_KEY)))
			key.tap(P1_5_KEY)
			#P1_5			
		elif(keysHit & (0b1 << 2)):
			#key.type_string(P1_4_KEY,0)
			#key.tap(long(ord(P1_4_KEY)))
			key.tap(P1_4_KEY)
			#P1_4
		elif(keysHit & (0b1 << 3)):
			#key.type_string(P1_3_KEY,0)
			key.tap(P1_3_KEY)
			#key.tap(long(ord(P1_3_KEY)))			
			#P1_3
		elif(keysHit & (0b1 << 4)):
			#key.type_string(P1_2_KEY,0)
			#key.tap(long(ord(P1_2_KEY)))
			key.tap(P1_2_KEY)	
			#P1_2
		elif(keysHit & (0b1 << 5)):
			key.tap(P1_1_KEY)
			#key.tap(long(ord(P1_1_KEY)))			
			#key.type_string(P1_1_KEY,0)
			#P1_1
		elif(keysHit & (0b1 << 6)):
			#key.type_string(P1_RIGHT_KEY,0)
			key.tap(key.K_RIGHT)
			#key.tap(long(key.K_RIGHT))
			#P1_RIGHT
		elif(keysHit & (0b1 << 7)):
			#key.type_string(P1_LEFT_KEY,0)
			key.tap(key.K_LEFT)
			#key.tap(long(key.K_LEFT))
			#P1_LEFT
		elif(keysHit & (0b1 << 8)):
			#key.type_string(P1_DOWN_KEY,0)
			#key.tap(long(key.K_DOWN))
			key.tap(key.K_DOWN)			
			#P1_DOWN
		elif(keysHit & (0b1 << 9)):
			#key.type_string(P1_UP_KEY,0)
			key.tap(key.K_UP)
			#key.tap(long(key.K_UP))			
			#P1_UP


