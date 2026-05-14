#!/bin/bash

# Project: LT-MC-Chat-Connector (LTMCCC)
# Description: Launch script for the Minecraft Node.js Relay

# Get the directory where the script is located
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"

echo "--- Starting LTMCCC Minecraft Relay ---"

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "Error: Node.js is not installed."
    echo "Please install it using: sudo apt install nodejs npm"
    exit 1
fi

# Install dependencies if node_modules folder is missing
if [ ! -d "node_modules" ]; then
    echo "Installing dependencies (Mineflayer & Axios)..."
    npm install mineflayer axios
fi

echo "Launching LTMCCC_Bot..."
echo "Make sure your Minecraft World is open to LAN with 'Online Mode: OFF'."

# Start the Node.js bot
node mc_bridge.js
