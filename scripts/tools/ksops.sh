#!/bin/bash
set -euo pipefail

echo "Installing ksops"
curl -s https://raw.githubusercontent.com/viaduct-ai/kustomize-sops/master/scripts/install-ksops-archive.sh | sudo bash
echo "Installed ksops"