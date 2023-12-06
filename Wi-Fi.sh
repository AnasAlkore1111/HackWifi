#!/bin/bash

# Function to handle SIGINT (CTRL + C)
handle_ctrl_c() {
    echo "Received CTRL + C. Exiting..."
    kill -SIGINT $aircrack_pid  # Send SIGINT to aircrack-ng
    exit 1
}

# Register the function to be called on SIGINT
trap handle_ctrl_c SIGINT

# Read the user input for Handshake
echo "Enter The path Handshake: "
read Handshake

# Read the user input for passwordlist
read -p $'Enter The Path Password File or Press Enter To select the primary password file: ' passwordlist

# If no input is provided, use the default IP
if [ -z "$passwordlist" ]; then
    echo "Selecting the primary password file"
    passwordlist="hack_wifi.txt" # Replace with your default password file
fi

# Run aircrack-ng with the provided Handshake and passwordlist
aircrack-ng "$Handshake" -w "$passwordlist" &
aircrack_pid=$!  # Get the PID of the aircrack-ng process

while true; do
    read -p "Type 'exit' to close the terminal: " userInput
    if [ "$userInput" = "exit" ]; then
        kill -SIGINT $aircrack_pid  # Send SIGINT to aircrack-ng
        break
    else
        echo "Invalid input. Type 'exit' to close the terminal."
    fi
done
