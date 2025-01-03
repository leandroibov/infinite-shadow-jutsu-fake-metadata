#!/bin/bash

# Check if the UID is 0 (root)
echo;
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root! Log in Tails as root first" >&2
    read -rp "The program will finish (Type 'ok' or 'any key'): " response1
    exit 1  # Exit the script with an error code
fi

# The script continues here if the user is root
echo "You are logged in as root. Continuing the script..."
echo;

###
echo;
echo "Mac Spoofing in Tails Bot";
echo "To use with jutsu_tails.sh";
echo "Chose a 2x or 3x or more higher time range in relation jutsu_tails.sh";
echo "-------------------------------------------------------------------------------";
read -rp "Do you understand and wish to proceed? (Type 'ok' or 'exit'): " response
echo "-------------------------------------------------------------------------------";

# Check if the input is either 'ok' or 'exit'
if [[ "$response" == "ok" ]]; then
    echo "Proceeding..."
    # Continue with the script
elif [[ "$response" == "exit" ]]; then
    echo "Exiting..."
    exit 0  # Exit the script
else
    echo "Invalid input. You must type 'ok' to proceed or 'exit' to quit."
    exit 1  # Exit with an error code
fi
echo "";





#read -rp "Enter the MAC address you want to register for the Firejail MAC spoofing command: " mac
#echo "The chosen MAC address is: $mac"
#echo "";
#read -rp "Enter the network interface you want to connect to for the Firejail command: " rede
#echo "The chosen network interface is: $rede"
#echo "";
echo "Time Range to set Tails Mac Spoofing..."
read -rp "Enter the minimum time value in seconds: " min_time
echo "Chosen minimum time: $min_time"
echo ""
read -rp "Enter the maximum time value in seconds: " max_time
echo "Chosen maximum time: $max_time"
echo ""

while true
do

# Generate randomly a value between 300 and 7200 or other preferences...
#time=$(shuf -i 300-1200 -n 1)
time=$(shuf -i $min_time-$max_time -n 1)

# Show the value of time for this connection
echo "Randomly chosen time in seconds: $time"
echo;
#Do mac spoofing using tails macchanger list (sudo macchanger --list;)
echo "Doing Mac Spoofing for next session of the bot looping...";
echo "***";
echo "sudo macchanger -A eth0;";
sudo macchanger -A eth0;
echo;
echo "sudo macchanger -A veth-clearnet;";
sudo macchanger -A veth-clearnet;
echo;
echo "sudo macchanger -A veth-onioncircs;";
sudo macchanger -A veth-onioncircs;
echo;
echo "sudo macchanger -A veth-onionshare;";
sudo macchanger -A veth-onionshare;
echo;
echo "sudo macchanger -A veth-tbb;";
sudo macchanger -A veth-tbb;
echo;
echo "sudo macchanger -A veth-tca;";
sudo macchanger -A veth-tca;
echo;
#restarting net and wating "$time" seconds for tor connection restore connection after mac spoofing...
echo "restarting net and wating $time seconds for tor connection restore connection after mac spoofing..."
nmcli networking off;
nmcli networking on;
sleep $time

echo;

done





