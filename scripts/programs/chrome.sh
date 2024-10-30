#!/bin/bash
set -euo pipefail

if command -v google-chrome &> /dev/null
then
    echo "Google Chrome already installed"
    exit 0
fi

source ./scripts/_functions.sh
echo "Installing Google Chrome"
_file_path=$(download_file "https://dl.google.com/linux/direct/google-chrome-stable_current_$(get_amd64_arm64).deb")
sudo dpkg -i $_file_path
clear_cache
echo "Installed Google Chrome"

echo "Installing chrome driver"
_file_path=$(download_file "https://chromedriver.storage.googleapis.com/100.0.4896.20/chromedriver_$(get_kernel)$(get_processor_bits).zip")
sudo unzip -o $_file_path -d "/usr/local/bin"
echo "Installed chrome driver"