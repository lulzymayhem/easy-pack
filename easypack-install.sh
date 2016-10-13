#!/bin/bash
current=$( pwd )
sudo mv $current/easy-pack.sh /bin
sudo echo alias easy-pack=\"easy-pack.sh\" > /etc/bash.bashrc
