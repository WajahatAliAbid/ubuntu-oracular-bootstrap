#!/bin/bash
set -euo pipefail

_packages=(
    "postgresql-client"
    "postgresql-client-common"
    "libpq-dev"
)

echo "Installing PostgreSQL"
sudo apt install ${_packages[@]} -y
echo "Installed PostgreSQL"