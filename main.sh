#!/bin/bash

# ANSI color codes
RED='\033[1;31m'      
GREEN='\033[1;32m'  
YELLOW='\033[1;33m' 
BLUE='\033[0;34m'
NC='\033[0m' # No Color
cat drawing | lolcat -a -s 400 -d 3 -f

# Function to display options
function display_options() {

    echo -e "                                   	${RED}1.  ifconfig wlan0 down${NC}"
    echo -e "                                   	${RED}2.  iwconfig wlan0 mode monitor${NC}"
    echo -e " 					${RED}3.  iwconfig${NC}"
    echo -e " 					${RED}4.  Listening to Wi-Fi networks${NC}"
    echo -e " 					${RED}5.  Capture handshake${NC}"
    echo -e " 					${RED}6.  Wifi Ddos${NC}"
    echo -e " 					${RED}7.  Wi-Fi password${NC}"
    echo -e " 					${RED}8.  test${NC}"
    echo -e " 					${RED}90. clear${NC}"
    echo -e " 					${RED}99. Exit${NC}\n"
}

# Main script
while true; do
    display_options

         read -p $'\033[1;32mEnter the number of your choice: \033[1;34m' choice


    case $choice in
        1)
            
            ifconfig wlan0 down
            ;;
        2)
            
            iwconfig wlan0 mode monitor
            
            ;;
        3)
           
            
            iwconfig
            ;;
        4)
            
             gnome-terminal -- airodump-ng wlan0
            
            ;;
        5)
            
             gnome-terminal -- bash handshake.sh
            ;;
        6)
            
            gnome-terminal -- bash DosWifi.sh
            
            ;;
        7)
           
            gnome-terminal -- bash Wi-Fi.sh
            
            ;;
        90)
            clear
             #gnome-terminal -- airodump-ng wlan0
            
            ;;

        99)
            
            break
            ;;
        *)
            echo -e "${BLUE}Invalid choice. Please Choose an existing number.${NC}\n"
            ;;
    esac
done
