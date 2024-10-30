#!/bin/bash
set -euo pipefail

# https://github.com/aristocratos/btop

if command -v btop &> /dev/null
then
    echo "btop already installed"
    exit 0
fi
echo "Installing btop"
sudo apt install btop -y
echo "Installed btop"