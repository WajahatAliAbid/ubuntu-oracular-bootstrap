#!/bin/bash
set -euo pipefail

if command -v zsh &> /dev/null
then
    echo "zsh already installed"
    exit 0
fi

echo "Installing zsh"
sudo apt install zsh -y
echo "Installed zsh"