import os
import psutil
import re
import serial
import socket
import subprocess
import time
from gpiozero import Button, LED

#############################################################################################
# Sends 'message' to port 55355 for RetroArch's network commands

def retroarch_command(message):
    sock = socket.socket(socket.AF_INET,
                         socket.SOCK_DGRAM)
    sock.sendto(message, ("127.0.0.1", 55355))

#############################################################################################
# Safely shuts-down the Raspberry Pi

def shutdown():
    print "shutdown...\n"
    subprocess.call("sudo shutdown -h now", shell=True)


led = LED(4)
led.on()
onbtn = Button(2)
offbtn = Button(3)

onbtn.when_pressed = retroarch_command("RESET")
offbtn.when_pressed = shutdown

	
