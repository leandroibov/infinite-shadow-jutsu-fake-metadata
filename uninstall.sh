#!/bin/bash

# Check if the UID is 0 (root)
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root!" >&2
    exit 1
fi

#Removing jutsu_tor bots from /bin
echo "Removing jutsu_tor bots from /bin";
echo "Moving files to /tmp folder for more security deleting"
sudo mv /bin/jutsu_tor1  /bin/jutsu_tor1_ram  /bin/jutsu_tor2  /bin/jutsu_tor2_ram /bin/jutsu_mullvad_i2p /tmp;
echo "Removing...";
echo "sudo rm -rf /tmp/jutsu_tor1  /tmp/jutsu_tor1_ram  /tmp/jutsu_tor2  /tmp/jutsu_tor2_ram /tmp/jutsu_mullvad_i2p;";
sudo rm -rf /tmp/jutsu_tor1  /tmp/jutsu_tor1_ram  /tmp/jutsu_tor2  /tmp/jutsu_tor2_ram /tmp/jutsu_mullvad_i2p;
echo;
echo "---------------------------------------------------------------------------------------------------------------------";
echo "All files removed..."
echo "---------------------------------------------------------------------------------------------------------------------";




