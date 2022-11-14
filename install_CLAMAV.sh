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


log INFO "Update System Packege"
echo ""
sudo apt update

echo ""

log INFO "Install CLAMAV on Linux Ubuntu"
sleep 3

echo ""

log INFO "STEP_1 - Install 'clamav clamav-daemon'"
sudo apt install clamav clamav-daemon -y
sleep 3
echo ""

log INFO "STEP_1.1 - Check Installed Version"
clamd --version
sleep 3
echo ""

log INFO "STEP_2 - Stop for Update DB_Antivirus"
sudo systemctl stop clamav-freshclam
sleep 3
echo ""

log INFO "STEP_3 - Update DB_Antivirus"
sudo freshclam
sleep 3
echo ""

log INFO "STEP_4 - Start after Update DB_Antivirus"
sudo systemctl start clamav-freshclam
sleep 3
echo ""

log INFO "STEP_5 - Install GUI Antivirus"
sudo apt install clamtk -y
sleep 3
echo ""

log INFO "STEP_6 - Status Antivirus"
sudo systemctl status clamav-freshclam
sleep 3
echo ""

log INFO "Done!"