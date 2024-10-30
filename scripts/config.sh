#!/bin/bash
set -euo pipefail

# Variables to add
watch_setting="fs.inotify.max_user_watches = 1638400"
instance_setting="fs.inotify.max_user_instances = 1638400"

# Check and add the settings if they don't exist
if ! grep -qF "$watch_setting" /etc/sysctl.conf; then
    echo "$watch_setting" | sudo tee -a /etc/sysctl.conf
    echo "Added: $watch_setting"
else
    echo "Setting already exists: $watch_setting"
fi

if ! grep -qF "$instance_setting" /etc/sysctl.conf; then
    echo "$instance_setting" | sudo tee -a /etc/sysctl.conf
    echo "Added: $instance_setting"
else
    echo "Setting already exists: $instance_setting"
fi

sudo sysctl -p