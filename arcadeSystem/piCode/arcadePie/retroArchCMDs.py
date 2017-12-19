#retroArchCMDs.py
import socket
import os

def retroarch_command(message):
    sock = socket.socket(socket.AF_INET,
                         socket.SOCK_DGRAM)
    sock.sendto(message, ("127.0.0.1", 55355))

########################################################################################
# Check if the console we read from NDEF Record #1 is valid, by checking against a list of supported emulators

def check_console(console):
    emulators = ["amiga", "amstradcpc", "apple2", "arcade", "atari800", "atari2600", "atari5200", "atari7800","atarilynx", "atarist", "c64", "coco", "dragon32", "dreamcast", "fba", "fds", "gamegear", "gb", "gba","gbc", "intellivision", "macintosh", "mame-advmame", "mame-libretro", "mame-mame4all", "mastersystem","megadrive", "msx", "n64", "neogeo", "nes", "ngp", "ngpc", "pc", "ports", "psp", "psx", "scummvm","sega32x", "segacd", "sg-1000", "snes", "vectrex", "videopac", "wonderswan", "wonderswancolor","zmachine", "zxspectrum"]
    if console != "":
        if console in emulators:
            print "NDEF Record \"" + console + "\" is a valid system...\n"
            return True

        else:
            print "Could not find \"" + console + "\" in the supported systems list"
            print "Check NDEF Record 1 for a valid system name(all-lowercase)\n"
            return False

######################################################################################### Return the path of the emulator ready to be used later

def get_emulatorpath(console):
    path = "/opt/retropie/supplementary/runcommand/runcommand.sh 0 _SYS_ " + console + " "
    return path


#########################################################################################
# Check that the rom is valid by looking for the file

def check_rom(console, rom):
    # get full rom path and check if it's a file
    romfile = "/home/pi/RetroPie/roms/" + console + "/" + rom
    if os.path.isfile(romfile):
        print "Found \"" + rom + "\"\n"
        return True
    else:
        print "But couldn\'t find \"" + romfile + "\""
        print "Check NDEF Record 2 contains a valid filename...\n"
        return False

########################################################################################
# Return the full path of the rom read from NDEF record #2 on the NFC tag

def get_rompath(console, rom):
    # escape the spaces and brackets in rom filename
    rom = rom.replace(" ", "\ ")
    rom = rom.replace("(", "\(")
    rom = rom.replace(")", "\)")
    rom = rom.replace("'", "\\'")

    rompath = "/home/pi/RetroPie/roms/" + console + "/" + rom
    return rompath
