#!/bin/bash
set -euo pipefail
_fonts=(
"CascadiaCode"
"FiraCode"
"FiraMono"
"Hack"
"JetBrainsMono"
"Mononoki"
"NerdFontsSymbolsOnly"
"Noto"
"RobotoMono"
"SourceCodePro"
"Terminus"
"UbuntuMono"
"Ubuntu"
)
echo 
source ./scripts/_functions.sh
mkdir -p  "$HOME/.fonts"
for font_name in "${_fonts[@]}"; do
    if [ -d "$HOME/.fonts/$font_name" ]; then
        echo "$font_name nerd font already exists"
        continue
    fi
    echo "Downloading $font_name nerd font"
    _file_path=$(download_git_release_file "ryanoasis/nerd-fonts" "$font_name.zip")
    unzip -o $_file_path -d "$HOME/.fonts/$font_name/"
    echo "Downloaded $font_name nerd font"
done
fc-cache -f
echo "Done setting up fonts"
clear_cache