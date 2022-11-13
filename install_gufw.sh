#!/bin/bash

echo "############# INFO: Update System Packege"
echo ""
sudo apt update
echo ""

echo "############# INFO: Install GUFW on Linux Ubuntu"
sleep 3
echo ""

echo "############# INFO: STEP_1 - Install 'GUFW'"
sudo apt install gufw -y
sleep 3
echo ""

echo "############# INFO: STEP_2 - Enable 'GUFW' after Restart PC"
sudo ufw enable
sleep 3
echo ""

echo "############# INFO: STEP_3 - Status 'GUFW'"
sudo systemctl status ufw
sleep 3
echo ""