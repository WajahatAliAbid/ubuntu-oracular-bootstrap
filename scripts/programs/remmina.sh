#!/bin/bash
set -euo pipefail
# The GTK Remmina Remote Desktop Client
# https://remmina.org
# https://gitlab.com/Remmina/Remmina
if command -v remmina &> /dev/null
then
    echo "Remmina already installed"
    exit 0
fi
_packages=(
    "remmina"
    "remmina-plugin-exec"
    "remmina-plugin-rdp"
    "remmina-plugin-secret"
    "remmina-plugin-vnc"
)
echo "Installing Remmina"
sudo apt install ${_packages[@]} -y
echo "Installed Remmina"
