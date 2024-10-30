#!/bin/bash
set -euo pipefail

source ./scripts/_functions.sh
echo "Installing argocd"
_file_name="argocd-$(get_kernel)-$(get_amd64_arm64)"
_path=$(download_git_release_file "argoproj/argo-cd" $_file_name)
sudo chmod +x $_path
sudo mv $_path /usr/local/bin/argocd
echo "Installed argocd"
clear_cache

echo "Installing argocd autopilot"
_version=$(get_release_version "argoproj-labs/argocd-autopilot")
echo $_version
_file_name="argocd-autopilot-$(get_kernel)-$(get_amd64_arm64).tar.gz"
_path=$(download_git_release_file "argoproj-labs/argocd-autopilot" $_file_name "v${_version}")
tar -C ./.cache/ -xf $_path
sudo mv "./.cache/argocd-autopilot-$(get_kernel)-$(get_amd64_arm64)" /usr/local/bin/argocd-autopilot
clear_cache
echo "Installed argocd autopilot"