#!/bin/bash
set -euo pipefail

# SOPS is an editor of encrypted files that supports YAML, JSON, ENV, INI and BINARY formats and encrypts with AWS KMS, GCP KMS, Azure Key Vault, age, and PGP
# https://github.com/getsops/sops
# https://getsops.io

source ./scripts/_functions.sh

echo "Installing sops"
_version=$(get_release_version getsops/sops)
_file_path=$(download_file "https://github.com/getsops/sops/releases/download/v${_version}/sops-v${_version}.$(get_kernel).$(get_amd64_arm64)")
sudo chmod +x $_file_path
sudo mv $_file_path /usr/local/bin/sops
echo "Downloaded $_file_path"
