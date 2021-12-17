#!/bin/bash

echo $(pwd) $(whoami)

if [[ $(whoami) != "root" ]]; then
	BIN_PATH="/home/$(whoami)/.local/bin/imgprev"
else
	BIN_PATH="/root/.local/bin/imgprev"
fi

echo "[*] >> Making ImagePreview bin directory"
dir_made=1
mkdir -p $BIN_PATH || dir_made=0
if [[ $dir_made -eq 0 ]]; then
	echo "[!] ImagePreview directory was not created..."
	exit 1
else
	echo "[+] ImagePreview directory was created!"
fi

echo "[*] >> Moving ImagePreview files"
files_moved=1
cp imgprev printout $BIN_PATH || files_moved=0
if [[ $files_moved -eq 0 ]]; then
	echo "[!] >> Cannot move files!"
	exit 1
else
	echo "[+] >> Files successfully moved!"
fi

echo "All Done! Happy Previewing!"
exit 0

