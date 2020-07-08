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

echo -e "${Red}\n--- WiFi Tools ---\n${NC}"
echo -e "${Yellow}You have 3 seconds to proceed ... ${NC}"
echo -e "${Yellow}or ${NC}"
echo -e "${Yellow}hit Ctrl+C to quit ${NC}"
echo -e "\n"
sleep 4

set -eu -o pipefail # Fail on error, Debug all lines

sudo -n true
test $? -eq 0 || exit 1 "you should have sudo priveledge to run this script"

# End Initial Checks and set-up


# Alfa Card Firmware
echo -e "${Green}\n--- Installing: Alfa Card Firmware ---\n${NC}"
apt-get install firmware-ralink
echo "Remember to setup USB 3.0 (xHCI) Controller under USB settings on virtual box for a quick use"


# Eaphammer
echo -e "${Green}\n--- Installing: Eaphammer ---\n${NC}"
git clone https://github.com/s0lst1c3/eaphammer.git
cd eaphammer/
./kali-setup
cd ..


# Airgeddon
echo -e "${Green}\n--- Installing: Airgeddon ---\n${NC}"
git clone --depth 1 https://github.com/v1s1t0r1sh3r3/airgeddon.git



echo -e "${Red}\n--- All set. Have fun! --- \n${NC}"