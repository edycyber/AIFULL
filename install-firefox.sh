#!/bin/bash

# Error handling
set -e

install_firefox_linux() {
    # Determine Linux distribution
    if command -v apt-get &> /dev/null; then
        # Ubuntu/Debian
        sudo apt-get update
        sudo apt-get install -y firefox
    elif command -v dnf &> /dev/null; then
        # CentOS/RHEL/Fedora
        sudo dnf upgrade -y
        sudo dnf install -y firefox
    elif command -v yum &> /dev/null; then
        # CentOS/RHEL
        sudo yum update -y
        sudo yum install -y firefox
    else
        echo "Error: Unable to determine Linux distribution. Please install Firefox manually."
        exit 1
    fi

    # Verify installation
    firefox --version
}

# Main execution
echo "=== Firefox Installation Script for Linux ==="
echo "This script will install Mozilla Firefox on your Linux system."

# Check if running as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root (sudo)." 
   exit 1
fi

# Install Firefox
install_firefox_linux

echo "Firefox has been installed successfully!"
echo "You can now launch Firefox from the command line or your desktop environment."