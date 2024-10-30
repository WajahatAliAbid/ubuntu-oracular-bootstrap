#!/bin/bash
set -euo pipefail

_packages=(
    "bind9-dnsutils"
    "nmap"
    "traceroute"
    # MTR is a simple, cross-platform command-line network diagnostic tool that combines the functionality of commonly used traceroute and ping programs into a single tool
    "mtr"
    "whois"
    "net-tools"
    
)

echo "Installing networking tools"
sudo apt install ${_packages[@]} -y
echo "Installed networking tools"