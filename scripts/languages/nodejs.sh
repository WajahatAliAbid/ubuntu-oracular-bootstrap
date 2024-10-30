#!/bin/bash
set -euo pipefail

if [ -d "$HOME/.nvm" ];
then
    echo "nvm is already installed"
    exit 0
fi

echo "Installing nvm"
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

echo "Installed nvm"

echo "Installing nodejs"
_node_versions=(
    "18"
    "20"
    "22"
)

for version in "${_node_versions[@]}"; do
    nvm install "$version"
    echo "Installed node $version"
done
nvm alias default 20