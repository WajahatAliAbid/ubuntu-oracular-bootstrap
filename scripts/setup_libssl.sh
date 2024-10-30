#!/bin/bash
set -euo pipefail

sudo apt install libssl-dev -y
source ./scripts/_functions.sh
_file_path=$(download_file "http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.0g-2ubuntu4_amd64.deb")
sudo dpkg -i $_file_path
clear_cache