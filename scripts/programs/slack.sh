#!/bin/bash
set -euo pipefail

source ./scripts/_functions.sh
if [ ! -f "/etc/apt/sources.list.d/slack.list" ];
then
    curl -fsSL https://packagecloud.io/slacktechnologies/slack/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/slack.gpg
    echo "deb [signed-by=/usr/share/keyrings/slack.gpg] https://packagecloud.io/slacktechnologies/slack/debian/ jessie main" | sudo tee /etc/apt/sources.list.d/slack.list
    echo "Added slack repository"
    sudo apt update -y
fi

if command -v slack-desktop &> /dev/null
then
    echo "Slack already installed"
    exit 0
fi

echo "Installing Slack"
sudo apt install -y slack-desktop
echo "Installed Slack"