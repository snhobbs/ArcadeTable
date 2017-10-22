#!/usr/env python3
import RPi.GPIO as GPIO
import time
import threading

keySwitch = 0
startBtn = 1
switchA = 2
switchB = 2
switchC = 2

GPIO.setmode(GPIO.BOARD)

GPIO.setwarnings(False)
GPIO.setup([keySwitch, startBtn, switchA, switchB, switchC], 
        GPIO.IN, pull_up_down=GPIO.PUD_DOWN)


GPIO.add_event_detect(BTN_B, GPIO.BOTH, handle)
