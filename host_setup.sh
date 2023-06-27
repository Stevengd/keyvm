#!/usr/bin/env bash

sudo apt update -y
sudo apt install dialog -y
sudo apt install net-tools -y

tar -xvf keyvm.tar

cp /etc/skel/.bashrc  ~/
source ~/.bashrc


echo alias sudo='sudo' >> ~/.bashrc
echo alias setup='./keyvm/menu.sh' >> ~/.bashrc
echo ./keyvm/menu.sh >> ~/.bashrc
 
sudo swapoff -a
(crontab -l 2>/dev/null; echo "@reboot /sbin/swapoff -a") | crontab - || true

exec bash
