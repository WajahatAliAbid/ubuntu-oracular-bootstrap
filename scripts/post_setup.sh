#!/bin/bash
set -euo pipefail

echo "Making zsh the default shell"
chsh -s $(which zsh)
echo "Done making zsh the default shell"