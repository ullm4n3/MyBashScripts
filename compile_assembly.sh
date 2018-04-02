#!/bin/sh
# (c) Sebb767, 2016
#
# Compile an 32-bit asm executable under linux x64. Requires gcc and nasm. Usage:
# ./compile.sh		# compile *.asm in directory
# ./compile.sh file	# compile $file 
#
# This file is licensed under the WTFPL.

set -e


compile ()
{
	asm="$1"
	base="${asm%.*}"
	echo "Started compiling $asm ... " 

	nasm -f elf32 "$asm"
	gcc -m32 "$base.o" -o "$base" 
	chmod +x "$base"   

	echo "Compiled $asm to $base." 
}

if [ ! -z "$1" ]; then
        compile "$1"
else
        for asm in *.asm; do
                compile "$asm"
        done
fi

