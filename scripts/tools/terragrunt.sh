#!/bin/bash
set -euo pipefail

source ./scripts/_functions.sh
echo "Installing terragrunt"
_version=$(get_release_version "gruntwork-io/terragrunt")
_file_name="terragrunt_$(get_kernel)_$(get_amd64_arm64)"
_file_path=$(download_git_release_file "gruntwork-io/terragrunt" $_file_name "v${_version}")
sudo chmod +x $_file_path
sudo mv $_file_path /usr/local/bin/terragrunt
echo "Installed terragrunt"