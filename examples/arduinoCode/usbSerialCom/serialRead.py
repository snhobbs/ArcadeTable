#serialRead.py
import serial
import io
import time
import os
ser = serial.Serial('/dev/ttyACM0',19200)
ser.close()
ser.open()
while True:
	ser.flushInput()
	ser.flushOutput()
	time.sleep(5)
	incoming = ser.readline().strip()
	print('Received %s' %incoming)
	inputString = ("%s"%incoming)
	os.system("cd /home/simon/RetroPie/scripts; ./runRetroArchGame.py " + inputString)
