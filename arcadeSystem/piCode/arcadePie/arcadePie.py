#arcadePie.py

import os
import psutil
import re
import socket
import subprocess
import time
from gpiozero import Button, LED

import piCtrls
import retroArchCMDs

#############################################################################################
# Assign the NES 'power' button to the button functions
onbtn = Button(2)
offbtn = Button(3)
loadButton = Button(4)
onbtn.when_pressed = button_on(cartok, emulatorpath, rompath)
offbtn.when_pressed = button_off()


#############################################################################################
# Assume the cart is not valid until we've checked it in the main loop
cartok = False


# Main Loop
while True:
    try:
    line = ser.readline()
        if line != "":
            records = line[:-1].split(', ')  # incoming data looks like: "$$$, $$$, $$$, \n"

            uid = records[0]  # 'uid' is read from the NFC tag, also used for shutdown, reset and cart eject
            console = records[1]  # 'console' is NDEF Record #1
            rom = records[2]  # 'rom' is NDEF Record #2

    except IndexError:
        print "NDEF read error...\n"
        ser.write("bad")  # Tell the Arduino there was a cart read error

#############################################################################################
# Check serial data for a command message in the 1st field
    if uid == "shutdown":
        print "shutdown command received...\n"
        piCtrls.shutdown()

    if uid == "cart_eject":
        print "cart ejected...\n"
        cartok = False

    if uid == "reset":
        print "reset button pressed...\n"
        retroArchCMDs.retroarch_command("RESET")

#############################################################################################
# Check the console and rom data for validity
	if console != "":
        if check_console(console):
            if check_rom(console, rom):
                emulatorpath = get_emulatorpath(console)
                rompath = get_rompath(console, rom)
                cartok = True
