#!/bin/bash
set -euo pipefail

if command -v trivy &> /dev/null
then
    echo "Trivy already installed"
    exit 0
fi
if [ ! -f "/etc/apt/sources.list.d/trivy.list" ];
then
	curl https://aquasecurity.github.io/trivy-repo/deb/public.key -L | sudo apt-key add -
	echo deb https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main | sudo tee -a /etc/apt/sources.list.d/trivy.list
    echo "Added Trivy repository"
    sudo apt update -y
fi
echo "Installing Trivy"
sudo apt install trivy -y
echo "Installed Trivy"