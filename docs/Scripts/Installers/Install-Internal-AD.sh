#!/bin/bash

NC='\033[0m' # No Color
# Regular Colors
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Black='\033[0;30m'        # Black
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

echo -e "${Red}\n--- Installing: Internal Tools (AD) ---\n${NC}"
echo -e "${Yellow}You have 3 seconds to proceed ... ${NC}"
echo -e "${Yellow}or ${NC}"
echo -e "${Yellow}hit Ctrl+C to quit ${NC}"
echo -e "\n"
sleep 4

set -eu -o pipefail # Fail on error, Debug all lines

sudo -n true
test $? -eq 0 || exit 1 "you should have sudo priveledge to run this script"

# End Initial Checks and set-up


# Add bloodhound
echo -e "${Green}\n--- Installing: Bloodhound ---\n${NC}"
wget -O - https://debian.neo4j.com/neotechnology.gpg.key | sudo apt-key add -
echo 'deb https://debian.neo4j.com stable 4.0' > /etc/apt/sources.list.d/neo4j.list
sudo apt-get update
apt-get install apt-transport-https
sudo apt-get install neo4j
systemctl stop neo4j
echo -e "${Cyan}Start neo4j as a console application and verify it starts up without errors:${NC}"
initialLocation=$(pwd)
echo -e "${Cyan}cd /usr/bin${NC}"
echo -e "${Cyan}systemctl start neo4j${NC}"
echo -e "${Cyan}./neo4j console ${NC}"
echo -e "${Cyan}go to https://localhost:7474/ and change password: AUTH neo4j:neo4j${NC}"
echo -e "${Cyan}cd ${initialLocation}${NC}"

read -rsp $'Press any key to continue...\n' -n1 key
apt-get install bloodhound


# Add CrackMapExec
echo -e "${Green}\n--- Installing: CrackMapExec ---\n${NC}"
apt-get install crackmapexec


# Add evil-winrm
echo -e "${Green}\n--- Installing: evil-winrm ---\n${NC}"
sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1
sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1
gem install evil-winrm


# Add Bettercap
echo -e "${Green}\n--- Installing: Bettercap ---\n${NC}"
apt install bettercap


# Add kerbrute
echo -e "${Green}\n--- Installing: kerbrute ---\n${NC}"
pip3 install kerbrute


# Add Impacket
pip3 install impacket



echo -e "${Red}\n--- All set. Have fun! --- \n${NC}"