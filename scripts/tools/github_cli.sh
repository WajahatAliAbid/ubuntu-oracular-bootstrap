#!/bin/bash
set -euo pipefail

# https://cli.github.com 
# https://github.com/cli/cli
# GitHub’s official command line tool

if command -v gh &> /dev/null
then
    echo "GitHub CLI already installed"
    exit 0
fi
if [ ! -f "/etc/apt/sources.list.d/github-cli.list" ];
then
	curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
	sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg
	echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
	echo "Add GitHub Cli repository"
	sudo apt update -y
fi
echo "Installing GitHub CLI"
sudo apt install gh -y
echo "Installed GitHub CLI"