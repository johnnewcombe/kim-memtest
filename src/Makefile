	# To build the mame command line, use the following URL
	# https://arcade.vastheman.com/minimaws/machine/acrnsys3

build:
	# merlin32 -v ./linkscript_A000.asm	# will need padding to 4K
	merlin32 -v ./linkscript.asm

	mv ./memtest ./output
	mv ./_Output.txt ./output
	mv ./_FileInformation.txt ./output

	# --------------------------------------------------------------------
	ls -lA ./output/
	# --------------------------------------------------------------------

	kim-util bin2paper -i ./output/memtest -o ./output/memtest.txt

test:build
	# https://arcade.vastheman.com/minimaws/machine/kim1
	mame kim1 -noreadconfig -rompath ../mame/roms -video opengl -skip_gameinfo -keymap -verbose -uimodekey CAPSLOCK -window -nomax -rs232 pty

	# From Jeff Tranter, in response to how to use paper tape format.
	# You need to select the terminal as a pty in the MAME configuration and then restart MAME.
 	# Check the device name used for the pty, e.g. dev/pts/1, and connect to that pty using a Linux terminal emulator such as minicom.


