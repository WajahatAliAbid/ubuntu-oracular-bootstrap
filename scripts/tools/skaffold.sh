#!/bin/bash
set -euo pipefail

source ./scripts/_functions.sh

echo "Installing skaffold"
_link="https://storage.googleapis.com/skaffold/releases/latest/skaffold-$(get_kernel)-$(get_amd64_arm64)"
_file_path=$(download_file $_link)
sudo chmod +x $_file_path
sudo mv $_file_path /usr/local/bin
clear_cache
echo "Installed skaffold"