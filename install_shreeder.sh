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

log INFO "Install File Shredder on Linux Ubuntu"
sleep 3

echo ""

log INFO "STEP_1 - Install 'flatpak'"
sudo apt install flatpak -y
sleep 3
echo ""

log INFO "STEP_2 - Install 'Raider'"
flatpak install https://dl.flathub.org/repo/appstream/com.github.ADBeveridge.Raider.flatpakref
sleep 3
echo ""

log INFO "Test Run application 'Raider'"
flatpak run com.github.ADBeveridge.Raider

log INFO "Done!"