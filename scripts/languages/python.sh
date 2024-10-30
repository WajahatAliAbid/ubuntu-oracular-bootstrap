#!/bin/bash
set -euo pipefail

_packages=(
    "python3"
    "python3-pip"
    "python3-venv"
    "python3-openssl"           
    "virtualenv"
    "isort"
    "black"
    "pipx"
    "python3-pyflakes"
)

echo "Installing Python"
sudo apt install ${_packages[@]} -y
echo "Installed Python"