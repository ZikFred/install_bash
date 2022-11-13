#!/bin/bash


echo "############# INFO: Update System Packege"
echo ""
sudo apt update

echo ""

echo "############# INFO: Install EncFS on Linux Ubuntu"
sleep 3
echo ""

echo "############# INFO: STEP_1 - Install 'EncFS'"
sudo apt install encfs -y
sleep 3
echo ""

echo "############# INFO: STEP_2 - Create Folder to Mount_Point"
mkdir -p ~/secretCriptoFolder ~/mntpoint
sleep 3
echo ""

echo "############# INFO: How to Use..."

echo "############# step_1: MOUNT"
echo "############# commmand_cli: 'encfs ~/secretCriptoFolder ~/mntpoint'"
echo ""
echo "############# step_2: UN_MOUNT"
echo "############# commmand_cli: 'fusermount -u ~/mntpoint'"