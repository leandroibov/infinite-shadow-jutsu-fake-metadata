#!/bin/bash

#Do mac spoofing using tails macchanger list (sudo macchanger --list;)
echo "Doing Mac Spoofing for all virtual network interface in Tails OS manually...";
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
echo;







