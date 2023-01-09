#!/bin/bash

# Updates and upgrades ubuntu
bash bin/ubuntu_update.sh

# Install main packages
bash bin/ubuntu_packages.sh

# Install VSCODE extensions
bash bin/vscode_extension.sh

# Install VSCODE settings and keybindings
bash bin/vscode_settings.sh