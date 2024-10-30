#!/bin/bash
set -euo pipefail
# A free, open source, and cross-platform media player
# https://mpv.io
# https://github.com/mpv-player/mpv
if command -v mpv &> /dev/null
then
    echo "MPV already installed"
    exit 0
fi
echo "Installing MPV"
sudo apt install -y mpv
echo "Installed MPV"