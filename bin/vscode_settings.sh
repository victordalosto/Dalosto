#!/bin/bash
# Install Visual studio Code extensions.
# OS: LINUX-UBUNTU
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
DIR="$(dirname "$SCRIPT_DIR")"
cp $DIR/vscode/settings.json $HOME/.config/Code/User/settings.json
cp $DIR/vscode/keybindings.json $HOME/.config/Code/User/keybindings.json