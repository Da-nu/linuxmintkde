#!/bin/bash
sudo echo "Me when I root"
echo ""
echo "Please make sure you are running this without cinnamon running"
echo ""
echo "Linux Mint KDE-ifier"
echo "made for mint 22 cinnamon at mind, people from the future beware"
echo "this is something i only tested for a bit but seemed to work."
echo "beware this will break stuff later on most likely for random reasons."
echo ""
echo "this will keep cinnamon specific apps sorta and reinstall some mint apps that might go down with the ship."
echo "i have zero idea if it will include everything, will update if I missed some"
echo ""
read -p "Press enter to start installing this madness (it will obliterate configs)"
echo ""
sudo apt purge mint-info-cinnamon mint-meta-cinnamon cinnamon* gnome-terminal gnome-system-monitor qt5ct
echo ""
echo "ok stuff obliterated"
read -p "press enter to start with next step (installing stuff)"
sudo apt install plasma-desktop firefox mintdrivers mintupdate nemo-fileroller mintchat mint-meta-core mint-artwork thunderbird konsole spectacle
echo "yay it installed"
echo "delete some mid"
sudo apt purge unattended-upgrades plasma-discover
echo "now to fix mintupdate"
gsettings set com.linuxmint.updates show-cinnamon-updates false
echo ""
read -p "press enter to start with next step (autoremove)"
sudo apt autoremove
echo "done!"
echo ""
echo "it should be done now and in a working state hopefully"
echo "youll need to manually set autostart stuff i have zero idea how to auto configure KDE yet"
echo "oh and the theming is also up to you, mint stuff should still be there"
echo "mint icons dont do kde though sadly so that part is up to you"
echo ""
echo "i suggest you restart"
read -p "Press enter to finish"
