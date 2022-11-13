#!/bin/bash


echo "############# INFO: Update System Packege"
echo ""
sudo apt update

echo ""

echo "############# INFO: Install CLAMAV on Linux Ubuntu"
sleep 3

echo ""

echo "############# INFO: STEP_1 - Install 'clamav clamav-daemon'"
sudo apt install clamav clamav-daemon -y
sleep 3
echo ""

echo "############# INFO: STEP_1.1 - Check Installed Version"
clamd --version
sleep 3
echo ""

echo "############# INFO: STEP_2 - Stop for Update DB_Antivirus"
sudo systemctl stop clamav-freshclam
sleep 3
echo ""

echo "############# INFO: STEP_3 - Update DB_Antivirus"
sudo freshclam
sleep 3
echo ""

echo "############# INFO: STEP_4 - Start after Update DB_Antivirus"
sudo systemctl start clamav-freshclam
sleep 3
echo ""

echo "############# INFO: STEP_5 - Status Antivirus"
sudo systemctl status clamav-freshclam
sleep 3
echo ""

echo "############# INFO: STEP_6 - Install GUI Antivirus"
sudo apt install clamtk -y
sleep 3
echo ""
