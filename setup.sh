#!/bin/sh
 
sudo apt update
sudo apt dist-upgrade
 
sudo apt install gnome-shell-extensions
sudo apt install gnome-shell-extension-prefs gnome-tweaks
 
apt list --installed google*
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
ls -l /etc/apt/sources.list.d
cat /etc/apt/sources.list.d/google.list
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt update
apt list google*
sudo apt-get install google-chrome-stable
apt list --installed google*

sudo apt-get install powertop
sudo powertop --auto-tune
sudo add-apt-repository ppa:linrunner/tlp
sudo apt-get update
sudo apt-get install tlp-rdw
sudo tlp start
sudo apt-get install gnome-shell-extensions
sudo add-apt-repository ppa:linuxuprising/apps
sudo apt-get update
sudo apt-get install tlpui
tlpui
 
