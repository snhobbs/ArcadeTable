#!/bin/bash
LOC_RETROPI="$HOME/RetroPie/roms"

if [ $1 == h ]; then
	printf "\n\n/////////////////////////////////////////////////////////////////////////\n"
	printf "Commands\t\tDescription\n"
	printf "h\t\t\tThis help screen\n"
	printf "n64\t\t\tn64 system\n"
	printf "nes\n"
	printf "gbc\n"
elif [ $1 == n64 ]; then
	printf "\nAvailable N64 games:\n"
	ls $LOC_RETROPI/$1
	printf "\nEnter game to load: "
	read -r GAME
	retroarch -L /usr/lib/libretro/mupen64plus_libretro.so $LOC_RETROPI/n64/$GAME
elif [ $1 == nes ]; then
	printf "\nAvailable NES games:\n"
	ls $LOC_RETROPI/$1
	printf "\nEnter game to load: "
	read -r GAME
	NES_EMULATOR=bnes_libretro.so
	#NES_EMULATOR=quicknes_libretro.so
	#NES_EMULATOR=nestopia_libretro.so
	retroarch -L /usr/lib/libretro/$NES_EMULATOR $LOC_RETROPI/nes/$GAME
elif [ $1 == gbc ]; then
	printf "\nAvailable Gameboy Colour games:\n"
	ls $LOC_RETROPI/$1
	printf "\nEnter game to load: "
	read -r GAME
	retroarch -L /usr/lib/libretro/gambatte_libretro.so $LOC_RETROPI/gbc/$GAME
else
	printf "\nError, unknown input, type h for help menu\n"
fi
