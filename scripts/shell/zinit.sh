#!/bin/bash
set -euo pipefail

source ./scripts/_functions.sh
echo "Installing zinit"
temp_clone_repo "zdharma-continuum/zinit"
sudo rm -rf $HOME/.local/share/zinit/zinit
mkdir -p $HOME/.local/share/zinit
sudo mv .cache $HOME/.local/share/zinit/zinit
echo "Installed zinit"