#!/bin/bash
set -euo pipefail

if command -v helm &> /dev/null
then
    echo "Helm already installed"
    exit 0
fi
if [ ! -f "/etc/apt/sources.list.d/helm-stable-debian.list" ];
then
	curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null
	echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
	echo "Added helm repository"
	sudo apt update -y
fi
echo "Installing Helm"
sudo apt install -y helm

echo "Installed Helm"