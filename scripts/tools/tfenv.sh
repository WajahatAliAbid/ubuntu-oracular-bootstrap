#!/bin/bash
set -euo pipefail

if [ -d "$HOME/.tfenv" ];
then
    echo "tfenv is already installed"
fi
echo "Installing tfenv"krew
rm -rf $HOME/.tfenv
git clone --depth=1 https://github.com/tfutils/tfenv.git $HOME/.tfenv
rm -rf $HOME/.tfenv/.git
echo "Installed tfenv"