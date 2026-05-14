#!/bin/bash

# Project: LT-MC-Chat-Connector (LTMCCC)
# Description: Launch script for the Python Flask Hub

# Get the directory where the script is located
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"

echo "--- Starting LTMCCC Python Hub ---"

# Check if virtual environment exists, if not, create it
if [ ! -d "venv" ]; then
    echo "Creating virtual environment (venv)..."
    python3 -m venv venv
fi

# Activate the virtual environment
source venv/bin/activate

# Install or update Flask quietly
echo "Checking dependencies..."
pip install flask --quiet

echo "Python server is starting on port 5000..."
echo "Press Ctrl+C to stop the server."

# Run the server using python3
python3 bridge.py
