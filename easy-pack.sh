#!/bin/bash
echo What distribution of Linux are you using?
read distro
if [[ $distro == "arch" ]]; then
	echo What do you want to do?
	read todo
fi
	if [[ $todo == "install" ]]; then
	echo What would you like to install?
	read install
	sudo pacman -S install
	fi
	elif [[ $todo == "remove" ]]; then
	echo What would you like to remove?
	read toremove
	sudo pacman -Rns $toremove
fi
