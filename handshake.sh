#!/bin/bash  
  
# Read the user input   
echo "Enter The name MKDIR: "  
read MKDIR  
echo "Enter The BSSID: "  
read BSSID  
echo "Enter The CHANNEL: "  
read CHANNEL  
echo "Enter The OUTPUT_FILE"
read OUTPUT_FILE
mkdir $MKDIR
cd $MKDIR
airodump-ng --bssid $BSSID --channel $CHANNEL --write $OUTPUT_FILE wlan0
while true; do
    read -p "Type 'exit' to close the terminal: " userInput
    if [ "$userInput" = "exit" ]; then
        break
    else
        echo "Invalid input. Type 'exit' to close the terminal."
    fi
done
