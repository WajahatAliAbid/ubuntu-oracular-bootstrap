#!/bin/bash
set -euo pipefail
source ./scripts/_functions.sh
mkdir -p ./.cache
if [ ! -f "/etc/apt/sources.list.d/brave-browser-release.list" ];
then
    curl https://brave-browser-apt-release.s3.brave.com/brave-core.asc | gpg --dearmor > ./.cache/brave-browser.gpg
    sudo install -o root -g root -m 644 ./.cachebrave-browser.gpg /etc/apt/trusted.gpg.d/
    echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"| sudo tee /etc/apt/sources.list.d/brave-browser-release.list
    sudo apt update -y
    echo "Added brave repository"
fi
clear_cache

if command -v brave-browser &> /dev/null
then
    echo "Brave already installed"
    exit 0
fi

echo "Installing Brave"
sudo apt install -y brave-browser
echo "Installed Brave"