#!/bin/bash
set -euo pipefail

if command -v libreoffice &> /dev/null
then
    echo "LibreOffice already installed"
    exit 0
fi

echo "Installing LibreOffice"
sudo apt install libreoffice -y
echo "Installed LibreOffice"