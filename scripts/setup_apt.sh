#!/bin/bash
set -euo pipefail
_packages=(
    "git"
    "curl"
    "g++"
    "gdb"
    "apt-transport-https"
    "build-essential"
    # ncdu (NCurses Disk Usage) is a disk utility for Unix systems
    # https://github.com/rofl0r/ncdu
    "ncdu"
    # A command-line program for getting and setting the contents of the X selection
    # https://github.com/kfish/xsel
    "xsel"
    # Command line interface to the X11 clipboard
    # https://github.com/astrand/xclip
    "xclip"
    "zip"
    "unzip"
    "cmake"
    "automake"
    "ca-certificates"
    "jq"
    "htop"
    # Stow is a symlink farm manager program which takes distinct sets of software and/or data located in separate directories on the filesystem, and makes them all appear to be installed in a single directory tree.
    # https://github.com/aspiers/stow
    "stow"
    "vim"
    
)

sudo add-apt-repository universe
sudo apt update -y
sudo apt install ${_packages[@]} -y
echo "Done setting up apt"