#!/bin/bash

log() {
  level=$1
  log_msg=$2

  case "$level" in
    INFO)
      echo -en "\033[34m ######## INFO: "
      echo -n "$log_msg"
      echo -e "\033[0m"
      ;;
    ERROR)
      echo -en "\033[1;31m ######## ERROR: "
      echo -n "$log_msg"
      echo -e "\033[0m"
      ;;
    WARN)
      echo -en "\033[1;33m ######## WARNING: "
      echo -n "$log_msg"
      echo -e "\033[0m"
      ;;
  esac
}

log INFO "Update System Package"
echo ""
sudo apt update

echo ""

log INFO "Install EncFS on Linux Ubuntu"
sleep 3
echo ""

log INFO "STEP_1 - Install 'EncFS'"
sudo apt install encfs -y
sleep 3
echo ""

log INFO "STEP_2 - Create Folder to Mount_Point"
mkdir -p ~/secretCriptoFolder ~/mntpoint
sleep 3
echo ""

log INFO "How to Use..."

echo "############# step_1: MOUNT"
echo "############# commmand_cli: 'encfs ~/secretCriptoFolder ~/mntpoint'"
echo ""
echo "############# step_2: UN_MOUNT"
echo "############# commmand_cli: 'fusermount -u ~/mntpoint'"

log INFO "Done!"