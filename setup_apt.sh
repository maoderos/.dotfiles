#!/bin/sh

su

apt update

apt install firmware-iwlwifi wget build-essential vim inkscape gimp  

#----social-----

#telegram 
add-apt-repository ppa:atareao/telegram

apt install telegram-desktop

#zoom

wget https://zoom.us/client/latest/zoom_amd64.deb

apt install ./zoom_amd64.deb

rm zoom_amd64.deb

#python- basics for data analysis

apt install python-pip

pip install jupyterlab numpy scipy matplotlib sympy pandas



