#!/bin/bash
chmod 755 easy-pack.sh
current=$( pwd )
sudo cp $current/easy-pack.sh /bin
sudo mkdir /etc/easy-pack
sudo cp /etc/bash.bashrc /etc/easy-pack
sudo echo alias easy-pack=\"easy-pack.sh\" >> /etc/bash.bashrc
sudo touch /etc/easy-pack/easy-pack.conf
echo "What is your Linux distro? If using a distro with the apt package manager (Debian, Ubuntu, etc.) please enter \"Debian\" (without quotes) as the distro. If using Arch Linux, please enter \"Arch\" (without the quotes) as the distro."
read distro
echo $distro > /etc/easy-pack/easy-pack.conf
