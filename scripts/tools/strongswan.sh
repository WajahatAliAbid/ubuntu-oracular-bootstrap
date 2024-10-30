#!/bin/bash
set -euo pipefail
# strongSwan is an OpenSource IPsec-based VPN solution
# https://www.strongswan.org
# https://github.com/strongswan/strongswan
if command -v strongswan &> /dev/null
then
    echo "StrongSwan already installed"
    exit 0
fi
_packages=(
    "strongswan"
    "strongswan-pki"
    # https://packages.debian.org/sid/libstrongswan-extra-plugins
    "libstrongswan-extra-plugins"
    # https://packages.debian.org/sid/libcharon-extra-plugins
    "libcharon-extra-plugins"
    # https://packages.debian.org/sid/libcharon-extauth-plugins
    libcharon-extauth-plugins
)

echo "Installing StrongSwan"
sudo apt install ${_packages[@]} -y
echo "Installed StrongSwan"