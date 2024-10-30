#!/bin/bash
set -euo pipefail

# https://github.com/dylanaraps/neofetch 
# A command-line system information tool written in bash 3.2+

if command -v neofetch &> /dev/null
then
    echo "neofetch already installed"
    exit 0
fi
echo "Installing neofetch"
sudo apt install neofetch -y
echo "Installed neofetch"