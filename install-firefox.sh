#!/bin/bash

# Install Firefox and dependencies if they are not present
if ! command -v firefox &> /dev/null
then
    echo "Firefox not found. Installing..."
    sudo apt update
    sudo apt install -y firefox
fi

# Install Xvfb for a virtual display (headless mode)
if ! command -v Xvfb &> /dev/null
then
    echo "Xvfb not found. Installing..."
    sudo apt install -y xvfb
fi

# Start Xvfb for virtual display and run Firefox in headless mode
Xvfb :99 -screen 0 1024x768x16 &  # Run Xvfb on display :99
export DISPLAY=:99

# Run Firefox with a specified URL or blank page in headless mode
firefox --new-window "about:blank" &

# Start a simple HTTP server on port 8000
echo "Starting local server on http://localhost:8000"
python3 -m http.server 8000
