#!/bin/bash
#installing jutsu_tors

# Check if the UID is 0 (root)
#if [ "$(id -u)" -ne 0 ]; then
 #   echo "This script must be run as root!" >&2
  #  exit 1
#fi

# The script continues here if the user is root
#echo "You are logged in as root. Continuing the script..."
#echo;

#identify active local user with shell login
#for user in $(who | awk '{print $1}'); do
 #   user_home=$(eval echo ~$user)
 #   download_dir="$user_home/Downloads"
#done

echo "Checking user and user folder in Tails..."
for user in $(who | awk '{print $1}'); do
    user1=$user  # Store just the username in user1
    user_home=$(eval echo ~$user)  # Get the home directory path for the user
    download_dir="$user_home/Persistent"
    
    # Optionally: Print the username and the home directory
    echo "Active user: $user1"
    echo "Home directory: $user_home"
    echo "Download directory: $download_dir"
done
echo;


#Addresses of folder for file in variable tor_folder and tor_executable
#tor_folder="$download_dir/tor-browser"
#tor_executable="$download_dir/tor-browser/Browser/start-tor-browser"

#Verify if folder tor-browser and file start-tor-browser exist!
#if [ ! -d "$tor_folder" ] || [ ! -f "$tor_executable" ]; then
    # Se a pasta ou o arquivo não existirem, avisa o usuário para instalar o Tor Browser
 #   echo "Tor Browser não encontrado. Por favor, instale o Tor Browser na pasta $download_dir"
  #  exit 1  # Sai do script com um código de erro (1)
#else
    # Se ambos existirem, avisa que o Tor Browser está instalado corretamente
 #   echo "Tor Browser já está instalado em $tor_folder."
#fi


# Verifica se o firejail está instalado
#if ! command -v firejail &> /dev/null; then
    # Se o firejail não estiver instalado, avisa o usuário e sai
 #   echo "Firejail is not installed. Please install it using: sudo apt install firejail"
  #  echo "Restart Tails and loggin as Root in Welcome Administration Screen...";
   # echo "Go to Application, root terminal, log in it, and...";
    #echo "sudo apt update -y";
    #echo "sudo apt install firejail -y";
    #echo "Chose to install in every Tails Session...";
    #echo "nano /etc/firejail/firejail.config";
    #echo "look for restricted-network no , if it has yes, change to no and save...";
    #exit 1  # Sai do script com código de erro
#else
    # Se o firejail estiver instalado, confirma
 #   echo "Firejail is installed. Proceeding..."
#fi
#echo;


# File path to copy domain.txt file and create folder domain in $download_dir
#mkdir /home/amnesia/Persistent/domain      
file="$download_dir/domain/domain.txt"
# Check if the file exists
if [ ! -f "$file" ]; then
    # If the file doesn't exist, notify the user to install it and exit
    echo "File $file not found. Copying /domain/domain.txt to $download_dir"
    #mkdir $download_dir/domain;
    #cp -r domain $download_dir/domain;
    #sudo chmod -R ugo=rwx $download_dir/domain $download_dir/domain/*;
    #sudo -u $user1 cp -r domain $download_dir/domain;
    cp -r domain $download_dir;
    #exit 1  # Exit the script with an error code
else
    # If the file exists, confirm everything is set up
    echo "File $file found. Everything is set up."
fi
echo;
echo "Run now other scripts as ./jutsu_tails.sh or ./jutsu_tails_firejail.sh and other versions for Tails OS...";
echo "Atention jutsu_tails_firejail needs firejail installed on Tails before in persistent mode...";

#Coping jutsu_tor bots to /bin (code version of linux Debian)
#echo "Coping jutsu_tor files to /bin";
#echo "sudo chmod +x jutsu_tor1  jutsu_tor1_ram  jutsu_tor2  jutsu_tor2_ram jutsu_mullvad_i2p;";
#sudo chmod +x jutsu_tor1  jutsu_tor1_ram  jutsu_tor2  jutsu_tor2_ram jutsu_mullvad_i2p;
#echo "sudo cp -r jutsu_tor1  jutsu_tor1_ram  jutsu_tor2  jutsu_tor2_ram jutsu_mullvad_i2p /bin;";
#sudo cp -r jutsu_tor1  jutsu_tor1_ram  jutsu_tor2  jutsu_tor2_ram jutsu_mullvad_i2p /bin;
#echo;
#echo "---------------------------------------------------------------------------------------------------------------------";
#echo "use jutsu_tor1 ou jutsu_tor2 in terminal to start jutsu_bot from tor browsers in Download Folder (no failsafe)..."
#echo "use jutsu_tor1_ram ou jutsu_tor2_ram in terminal to start jutsu_bot running in shared memory failsafe... (without bridges metadata files)"
#echo "i2p jutsu? jutsu_mullvad_i2p in terminal..."
#echo "---------------------------------------------------------------------------------------------------------------------";




