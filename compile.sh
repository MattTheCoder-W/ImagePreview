#!/bin/bash

BOLD=$(tput bold)
NORMAL=$(tput sgr0)

echo "[*] >> Starting compiling process"

echo "[*] >> Compiling print.c -> ${BOLD}printout${NORMAL}"
gcc -o printout print.c && success=1 || success=0
if [[ success -eq 1 ]]; then
	echo "[+] >> print.c compiled successfully!"
else
	echo "[-] Error while compiling print.c!!!"
	exit 1
fi

echo "[+] >> Everything compiled! Have fun"
