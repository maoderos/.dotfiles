#!/bin/sh

# This is a script to install some applications that I use daily.
# using pacman package manager ( Arch ) 

sudo pacman -S vim firefox inkscape gimp jupyterlab python-matplotlib python-numpy python-scipy python-sympy python-pandas base-devel byobu htop telegram-desktop git wget;  

# if your desktop environment is gnome, this plugin will fix the softaware application bug 

sudo pacman -S gnome-software-packagekit-plugin ;

# For fixing the extension problem that can occur in the web browser

git clone https://aur.archlinux.org/chrome-gnome-shell.git ; 
cd gnome-chrome-shell;
makepkg -si;
cd ..;
rm -rf gnome-chrome-shell;
