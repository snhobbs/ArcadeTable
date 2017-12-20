#piCtrls.py
#FIXME ADD BLINKING AND BUTTONS
import subprocess
import time
import re

######################################################################################### Safely shuts-down the Raspberry Pi

def shutdown():
	print "shutdown...\n"
	subprocess.call("sudo shutdown -h now", shell=True)

######################################################################################### If the cartridge is valid when the button is switched on then we can launch the rom

def button_on(cartok, emulatorpath, rompath):
	if cartok:
		procnames = ["retroarch", "ags", "uae4all2", "uae4arm", "capricerpi", "linapple", "hatari", "stella","atari800", "xroar", "vice", "daphne", "reicast", "pifba", "osmose", "gpsp", "jzintv","basiliskll", "mame", "advmame", "dgen", "openmsx", "mupen64plus", "gngeo", "dosbox", "ppsspp","simcoupe", "scummvm", "snes9x", "pisnes", "frotz", "fbzx", "fuse", "gemrb", "cgenesis", "zdoom","eduke32", "lincity", "love", "alephone", "micropolis", "openbor", "openttd", "opentyrian","cannonball", "tyrquake", "ioquake3", "residualvm", "xrick", "sdlpop", "uqm", "stratagus","wolf4sdl", "solarus", "emulationstation", "emulationstatio"]
		killtasks(procnames)
		subprocess.call("sudo openvt -c 1 -s -f " + emulatorpath + rompath + "&", shell=True)
		subprocess.call("sudo chown pi -R /tmp", shell=True)  # ES needs permission as 'pi' to access this later
		time.sleep(1)
	else:
		print "no valid cartridge inserted...\n"


######################################################################################### Close the emulator when the button is pushed again ("off")

def button_off():
	if process_exists("emulationstation"):
		print "\nemulationstation is running...\n"
	else:
		procnames = ["retroarch", "ags", "uae4all2", "uae4arm", "capricerpi", "linapple", "hatari", "stella","atari800", "xroar", "vice", "daphne", "reicast", "pifba", "osmose", "gpsp", "jzintv","basiliskll", "mame", "advmame", "dgen", "openmsx", "mupen64plus", "gngeo", "dosbox", "ppsspp","simcoupe", "scummvm", "snes9x", "pisnes", "frotz", "fbzx", "fuse", "gemrb", "cgenesis", "zdoom","eduke32", "lincity", "love", "alephone", "micropolis", "openbor", "openttd", "opentyrian","cannonball", "tyrquake", "ioquake3", "residualvm", "xrick", "sdlpop", "uqm", "stratagus","wolf4sdl", "solarus"]
		killtasks(procnames)

######################################################################################### Sends 'message' to port 55355 for RetroArch's network commands

def retroarch_command(message):
	sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
	sock.sendto(message, ("127.0.0.1", 55355))


######################################################################################### Kills the task of 'procnames', also forces Kodi to close if it's running

def killtasks(procnames):
	for proc in psutil.process_iter():
		if proc.name() in procnames:
			pid = str(proc.as_dict(attrs=['pid'])['pid'])
			name = proc.as_dict(attrs=['name'])['name']
			print "stopping... " + name + " (pid:" + pid + ")"
			subprocess.call(["sudo", "kill", "-15", pid])

	kodiproc = ["kodi", "kodi.bin"]  # kodi needs SIGKILL -9 to close
	for proc in psutil.process_iter():
		if proc.name() in kodiproc:
			pid = str(proc.as_dict(attrs=['pid'])['pid'])
			name = proc.as_dict(attrs=['name'])['name']
			print "stopping... " + name + " (pid:" + pid + ")"
			subprocess.call(["sudo", "kill", "-9", pid])
            
######################################################################################### Returns True if the 'proc_name' process name is currently running

def process_exists(proc_name):
	ps = subprocess.Popen("ps ax -o pid= -o args= ", shell=True, stdout=subprocess.PIPE)
	ps_pid = ps.pid
	output = ps.stdout.read()
	ps.stdout.close()
	ps.wait()
	for line in output.split("\n"):
		res = re.findall("(\d+) (.*)", line)
		if res:
			pid = int(res[0][0])
			if proc_name in res[0][1] and pid != os.getpid() and pid != ps_pid:
				return True
			else
                 return False
		else
			return False
