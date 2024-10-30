#!/bin/bash
set -euo pipefail

if [ ! -f "/etc/apt/sources.list.d/docker.list" ];
then
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
	echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
	echo "Added Docker repository"
    sudo apt update -y
fi


_packages=(
    "docker-ce"
    "docker-ce-cli"
    "containerd.io"
    "docker-buildx-plugin"
    "docker-compose-plugin"
)
if ! command -v docker &> /dev/null
then
    sudo apt install "${_packages[@]}" -y

    sudo usermod -aG docker $USER
    sudo systemctl enable docker.service
    sudo systemctl start docker.service
    echo "Installed docker"
fi


# https://docs.docker.com/scout/install/
# https://github.com/docker/scout-cli
# https://www.docker.com/products/docker-scout/

#FIXME: This isn't working for now
# source ./scripts/_functions.sh
# _version=$(get_release_version "docker/scout-cli")
# _link="https://github.com/docker/scout-cli/releases/download/v${_version}/docker-scout_${_version}_$(get_kernel)_$(get_amd64_arm64).tar.gz"
# _path=$(download_file $_link)
# tar -zxf $_path -C ./.cache/
# mkdir -p $HOME/.docker/scout
# sudo chmod +x ./.cache/docker-scout
# mv ./.cache/docker-scout $HOME/.docker/scout
# jq '.cliPluginsExtraDirs = ["$HOME/.docker/scout"]' $HOME/.docker/config.json > ./.cache/config.json
# mv ./.cache/config.json $HOME/.docker/config.json
# clear_cache