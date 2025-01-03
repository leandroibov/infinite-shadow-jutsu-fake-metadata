#!/bin/bash

#variable domain to get from data base of domains randomically and add to it...
#database file domains.txt
#domain="";

#variable time to get randomlly time from 60 seconds to 2,5 hours
#time="";

#variable mac to mac spoofing from mac spoofing vendors list called macvendors.txt
#mac="";

#variable net to subscribe the network interface of your preference...
#net="";

#bridges list collected called bridges.txt
#bridges="";

#variables min_time and max_time to define the time range durantion for each command of the bot...
#min_time="";
#max_time="";

#ask user to inform network interface. Required cause some system can be using more than one interface...

#generate mac spoofing list for macvendors.txt

#create new tor browser

###
echo;
echo "Shadow Jutsu in Tails (just one bot)";
echo "To make the bot work, you need to configure 'about:preferences#connection' in the first session to 'Always connect automatically'."
echo "Set up a bridge in Tails OS or no bridge according to your plan for creating fake metadata."
echo "Restart the Tor Browser or click 'Connect' to start."
echo "In future sessions, everything will be automated in an infinite loop..."
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

# Algorithm for linux debian tor browser...
#tor_folder="$HOME/Persistent/tor-browser"
#tor_executable="$HOME/Persistent/tor-browser/Browser/start-tor-browser"

# Check if the tor-browser folder and the start-tor-browser file exist
#if [ ! -d "$tor_folder" ] || [ ! -f "$tor_executable" ]; then
    # If the folder or file does not exist, notify the user to install Tor Browser
 #   echo "Tor Browser not found. Please install Tor Browser in the $HOME/Persistent/"
  #  echo "The $tor_folder folder will be created for you to install Tor Browser."
   # exit 1  # Exit the script with an error code (1)
#else
    # If both exist, notify that Tor Browser is correctly installed
 #   echo "Tor Browser is already installed in $tor_folder."
#fi
#echo


# Check if firejail is installed
#if ! command -v firejail &> /dev/null; then
    # If firejail is not installed, notify the user and exit
 #   echo "Firejail is not installed. Please install it using: sudo apt install firejail"
 #read -rp "The program will finish (Type 'ok' or 'any key'): " response1
     #  exit 1  # Exit the script with an error code
#else
    # If firejail is installed, confirm
 #   echo "Firejail is installed. Proceeding..."
#fi
#echo;



# File path
file="$HOME/Persistent/domain/domain.txt"
#file="/home/amnesia/Persistent/domain/domain.txt"

# Check if the file exists
if [ ! -f "$file" ]; then
    # If the file doesn't exist, notify the user to install it and exit
    echo "File $file not found. Please install the domain database. Using ./install_tails.sh to do it!"
    read -rp "Type ok or other key to exit program and install the file necessary for program run...(Type 'ok' to exit): " response2
  if [[ "$response" == "ok" ]]; then
   exit 1  # Exit the script with an error code
   else
    echo "Invalid input. You must type 'ok' to proceed  to quit."
    exit 1  # Exit with an error code
fi
else
    # If the file exists, confirm everything is set up
    echo "File $file found. Everything is set up."
fi



echo "----------------------------------------------------------------------------------------------------";
echo "Basic Infinite Shadow Jutsu Fake Metadata TOR in Tails Linux OS";
echo "----------------------------------------------------------------------------------------------------";
#read -rp "Enter the MAC address you want to register for the Firejail MAC spoofing command: " mac
#echo "The chosen MAC address is: $mac"
#echo "";
#read -rp "Enter the network interface you want to connect to for the Firejail command: " rede
#echo "The chosen network interface is: $rede"
#echo "";
echo "Time Range: Recommended 5 minutes to 20 minutes or 300 to 1200 seconds!"
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


# Select a random line and assign it to the variable domain to create connection fake navigation
    domain=$(shuf -n 1 "$file")
    echo "Randomly selected domain: $domain"
    echo "----------------------------------------------------------------------------------------------------";
echo "Control + C to stop Shadow Jutsu Bot";
echo "if not work, turn off terminal...";
echo "----------------------------------------------------------------------------------------------------";


echo;

echo "timeout $time tor-browser "$domain";";
timeout $time tor-browser "$domain";



done





