#!/bin/bash


echo "############# INFO: Update System Packege"
echo ""
sudo apt update

echo ""

echo "############# INFO: Install File Shredder on Linux Ubuntu"
sleep 3

echo ""

echo "############# INFO: STEP_1 - Install 'flatpak'"
sudo apt install flatpak -y
sleep 3
echo ""

echo "############# INFO: STEP_2 - Install 'Raider'"
flatpak install https://dl.flathub.org/repo/appstream/com.github.ADBeveridge.Raider.flatpakref
sleep 3
echo ""

echo "############# INFO: Test Run application 'Raider'"
flatpak run com.github.ADBeveridge.Raider
