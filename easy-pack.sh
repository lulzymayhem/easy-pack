#!/bin/bash

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
