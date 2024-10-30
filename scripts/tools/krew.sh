#!/bin/bash
set -euo pipefail
# https://krew.sigs.k8s.io
#TODO: investigate proper installation way for krew
source ./scripts/_functions.sh
echo "Installing krew"
_file_name="krew-$(get_kernel)_$(get_amd64_arm64)"
_path=$(download_git_release_file "kubernetes-sigs/krew" "$_file_name.tar.gz")
tar -C ./.cache -xf $_path
sudo chmod +x ./.cache/$_file_name
./.cache/$_file_name install krew
clear_cache
echo "Installed krew"

export PATH="$PATH:$HOME/.krew/bin"

plguins=(
    "ctx"
    "ns"
)

for plugin in "${plguins[@]}"; do
    echo "Installing $plugin"
    kubectl krew install "$plugin"
    echo "Installed $plugin"
done