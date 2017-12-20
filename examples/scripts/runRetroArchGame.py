#!/usr/bin/python
import sys
import os
HOME=os.environ['HOME']
LOC_RETROPI= HOME + "/RetroPie/roms/"
SYSTEM=sys.argv[1]
GAME=sys.argv[2]
LOC_EMUS= "/usr/lib/libretro/"
EMU_NES = 'bnes_libretro.so'
#EMU_NES=quicknes_libretro.so
#EMU_NES=nestopia_libretro.so
EMU_N64 = 'mupen64plus_libretro.so'
EMU_GBC = 'gambatte_libretro.so'
EMU_PSX = 'mednafen_psx_libretro.so'
if (SYSTEM == 'n64'):
	emulator = EMU_N64
elif (SYSTEM == 'nes'):
	emulator = EMU_NES
elif (SYSTEM == 'gbc'):
	emulator = EMU_GBC
elif (SYSTEM == 'psx'):
	emulator = EMU_PSX
elif (SYSTEM == 'h' or SYSTEM == '-h'):
	print "\n\n/////////////////////////////////////////////////////////////////////////\n"
	print "Commands\t\tDescription\n"
	print "h\t\t\tThis help screen\n"
	print "n64\t\t\tn64 system\n"
	print "nes\n"
	print "gbc\n"
	print "psx\t\t\tPS1 System\n"
	exit(1)
else:
	print "\nError, unknown input, type h for help menu\n"
	exit(0)

#print "\nAvailable " + SYSTEM + " games:\n"
#os.system("ls " + LOC_RETROPI + SYSTEM )
#GAME = raw_input("\nEnter game to load: ")
print "retroarch -L " + emulator + " " + LOC_RETROPI + SYSTEM + "/" + GAME
os.system("retroarch -L " + LOC_EMUS + emulator + " " + LOC_RETROPI + SYSTEM + "/" + GAME)



