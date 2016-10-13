#!/bin/bash
chmod 755 easy-pack.sh
current=$( pwd )
sudo cp $current/easy-pack.sh /bin
sudo echo alias easy-pack=\"easy-pack.sh\" > /etc/bash.bashrc
