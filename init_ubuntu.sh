#!/bin/bash

#SCRIPT DIR
DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Updates and upgrades ubuntu
bash $DIR/bin/ubuntu_update.sh

# Install main packages
bash $DIR/bin/ubuntu_packages.sh

# Install VSCODE extensions
bash $DIR/bin/vscode_extension.sh

# Install VSCODE settings and keybindings
bash $DIR/bin/vscode_settings.sh