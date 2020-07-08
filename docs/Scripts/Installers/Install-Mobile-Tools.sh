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

echo -e "${Red}\n--- Mobile Tools ---\n${NC}"
echo -e "${Yellow}You have 3 seconds to proceed ... ${NC}"
echo -e "${Yellow}or ${NC}"
echo -e "${Yellow}hit Ctrl+C to quit ${NC}"
echo -e "\n"
sleep 4

set -eu -o pipefail # Fail on error, Debug all lines

sudo -n true
test $? -eq 0 || exit 1 "you should have sudo priveledge to run this script"

# End Initial Checks and set-up


### MobSF
echo -e "${green}\n--- Installing: MobSF ---\n${NC}"
git clone https://github.com/MobSF/Mobile-Security-Framework-MobSF.git
cd Mobile-Security-Framework-MobSF/
pip3 install virtualenv
virtualenv -p python3 venv
source venv/bin/activate
pip3 install -r requirements.txt
echo -e "${Cyan}Change python3 and pip3 in setup script (in Mobile-Security-Framework-MobSF)${NC}"
read -rsp $'Press any key to continue...\n' -n1 key
./setup.sh


### apkx
echo -e "${green}\n--- Installing: apkx ---\n${NC}"
git clone https://github.com/b-mueller/apkx
cd apkx
./install.sh
cd ..


### Needle


### objection


#### Frida


echo -e "${Red}\n--- All set. Have fun! --- \n${NC}"