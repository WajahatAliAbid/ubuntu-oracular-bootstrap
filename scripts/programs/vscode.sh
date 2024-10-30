#!/bin/bash
set -euo pipefail

if command -v code &> /dev/null
then
    echo "VS Code already installed"
    exit 0
fi

if [ ! -f "/etc/apt/sources.list.d/vscode.list" ];
then
    echo "Adding vs code repo"
	curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
	sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
	sudo sh -c 'echo "deb [arch=$(dpkg --print-architecture)] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
	rm microsoft.gpg
	echo "Added vs code repo"
	sudo apt update -y
fi

echo "Installing VS Code"
sudo apt install code -y
echo "Installed VS Code"