#!/bin/bash  
  
# Read the user input   
echo "Enter The path Handshake: "  
read Handshake  
echo "Enter The path passwordlist: "  
read passwordlist  
aircrack-ng $Handshake -w $passwordlist
while true; do
    read -p "Type 'exit' to close the terminal: " userInput
    if [ "$userInput" = "exit" ]; then
        break
    else
        echo "Invalid input. Type 'exit' to close the terminal."
    fi
done
