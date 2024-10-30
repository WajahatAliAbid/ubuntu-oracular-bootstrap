#!/bin/bash
set -euo pipefail

if command -v obs &> /dev/null
then
    echo "OBS Studio already installed"
    exit 0
fi
echo "Installing OBS Studio"
sudo apt install obs-studio -y
echo "Installed OBS Studio"
