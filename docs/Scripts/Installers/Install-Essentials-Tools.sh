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

echo -e "${Red}\n--- Essentials Tools and Requirements ---\n${NC}"
echo -e "${Yellow}You have 3 seconds to proceed ... ${NC}"
echo -e "${Yellow}or ${NC}"
echo -e "${Yellow}hit Ctrl+C to quit ${NC}"
echo -e "\n"
sleep 4

set -eu -o pipefail # Fail on error, Debug all lines

sudo -n true
test $? -eq 0 || exit 1 "you should have sudo priveledge to run this script"

# End Initial Checks and set-up


# Python
echo -e "${Green}\n--- Installing: Python ---\n${NC}"
apt-get install python3-pip
apt-get install python3-venv
apt-get install python-pip


# Filezilla
echo -e "${Green}\n--- Installing: Filezilla ---\n${NC}"
apt-get install filezilla


# BooFuzz



# cave_miner-master



echo -e "${Red}\n--- All set. Have fun! --- \n${NC}"