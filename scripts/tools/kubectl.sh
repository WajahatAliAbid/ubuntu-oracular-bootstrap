#!/bin/bash
set -euo pipefail
echo "Installing kubectl"
_version=$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)
source ./scripts/_functions.sh
_path=$(download_file "https://storage.googleapis.com/kubernetes-release/release/$_version/bin/linux/amd64/kubectl")
sudo chmod +x $_path
sudo mv $_path /usr/local/bin/

echo "Installed kubectl"
