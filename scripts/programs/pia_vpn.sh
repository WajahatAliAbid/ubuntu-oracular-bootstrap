#!/bin/bash
set -euo pipefail

echo "Installing PIA VPN"
source ./scripts/_functions.sh
# TODO: fix this as it won't download using curl command
_path=$(download_file "https://installers.privateinternetaccess.com/download/pia-linux-3.6.1-08339.run")
sudo chmod +x $_path
# sudo $_path
# clear_cache
echo "Installed PIA VPN"