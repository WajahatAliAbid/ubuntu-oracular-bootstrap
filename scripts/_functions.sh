#!/bin/bash
set -euo pipefail

function get_release_version() {
    local repo_name=$1

    local _version=$(curl -s "https://api.github.com/repos/${repo_name}/releases/latest" | grep '"tag_name"' | sed -E 's/.*"([^"]+)".*/\1/' | sed 's/v//g')
    echo $_version
}

function temp_clone_repo() {
    rm -rf ./.cache
    local repo=$1
    mkdir -p ./.cache
    git clone -q -- https://github.com/$repo.git ./.cache/
    rm -rf ./.cache/.git
    rm -rf ./.cache/.gitignore
    rm -rf ./.cache/.github
}

function clear_cache() {
    rm -rf ./.cache
}

function get_kernel() {
    local kernel=$(uname -s | awk '{print tolower($0)}')
    echo $kernel
}

function get_codename() {
    local codename=$(lsb_release -cs)
    echo $codename
}

function get_amd64_arm64() {
    local architecture=$(dpkg --print-architecture)
    echo $architecture
}

function get_machine_hardware() {
    local hardware=$(uname -m)
    echo $hardware
}

function get_processor_bits() {
    local bits=$(getconf LONG_BIT)
    echo $bits
}

function download_git_release_file() {
    local repo=$1
    local file_name=$2
    local release=${3:-latest}
    if [ "$release" == "latest" ];
    then
        local url="https://github.com/${repo}/releases/$release/download/${file_name}"
    else
        local url="https://github.com/${repo}/releases/download/${release}/${file_name}"
    fi
    mkdir -p ./.cache
    local file_path="$(pwd)/.cache/$file_name"
    curl -s $url -Lo $file_path
    echo $file_path
}

function download_file() {
    local url=$1
    local file_name=${2:-$(basename $url)}
    local file_path="$(pwd)/.cache/$file_name"
    mkdir -p ./.cache
    curl -s $url -Lo $file_path
    echo $file_path
}

function install_pip_tool() {
    local tool_name=$1
    if ! command -v pip &> /dev/null
    then
        echo "pip is not installed"
        exit 1
    fi
    echo "Installing $tool_name"
    pip3 install --global $tool_name
    echo "Installed $tool_name"
}

clear_cache       