#!/bin/bash
if [[ $distro == "arch" ]]; then
	echo "What do you want to do?"
	read todo

	if [[ $todo == "install" ]]; then
		echo What would you like to install?
		read install
		sudo pacman -S install
	elif [[ $todo == "remove" ]]; then
		echo What would you like to remove?
		read toremove
		sudo pacman -Rns $toremove
	elif [[ $todo == "update" ]]; then
		sudo pacman -Syu
	elif [[ $todo == "synchronize" ]]; then
		sudo pacman -Syy
	elif [[ $todo == "search" ]]; then
		echo "What do you want to search?"
		read search
		sudo pacman -Ss $search
	else
		echo "This is not an option."
	fi
elif [[ $distro == "debian" ]]; then
	echo "What do you want to do?"
	read tododeb
	if [[ $tododeb == "install" ]]; then
		echo "What would you like to install?"
		read debinstall
		sudo apt-get install $debinstall
	elif [[ $tododeb == "remove" ]]; then
		echo "What would you like to remove?"
		read debtoremove
		echo "Would you like to remove the configuration files of this package too? [y/n]"
		read debremove
		if [[ $debremove == "y" ]]; then
			sudo apt-get purge $debtoremove
		elif [[ $debremove == "n" ]]; then
			sudo apt-get remove $debtoremove
		fi
	elif [[ $tododeb == "synchronize" ]]; then
		sudo apt-get update
	elif [[ $tododeb == "upgrade" ]]; then
		sudo apt-get dist-upgrade
	fi
fi
