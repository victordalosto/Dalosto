#!/bin/bash

# Gives sudo to user
usermod -aG sudo victor

# Updates and upgrades Linux 
sudo apt-get update -y
sudo apt-get upgrade -y
suto apt-get autoremove -y
sudo apt-get clean -y

# Install main packages
sudo apt-get install iproute2 -y
sudo apt-get install curl -y
sudo apt-get install git -y
sudo apt-get install openjdk-17-jdk -y
sudo snap install gitkraken --classic
sudo snap install code --classic

# Install VSCODE extensions
code --install-extension dracula-theme.theme-dracula
code --install-extension redhat.java
code --install-extension VisualStudioExptTeam.intellicode-api-usage-examples
code --install-extension VisualStudioExptTeam.vscodeintellicode
code --install-extension vscjava.vscode-java-pack
code --install-extension vscjava.vscode-java-debug
code --install-extension vscjava.vscode-java-dependency
code --install-extension vscjava.vscode-java-test
code --install-extension vscjava.vscode-maven
code --install-extension rafapaulin.try-material-icon-theme

# Install VSCODE settings and keybindings
cp ./vscode/settings.json $HOME/.config/Code/User/settings.json
cp ./vscode/keybindings.json $HOME/.config/Code/User/keybindings.json

# New update calls
sudo apt-get update -y
sudo apt-get upgrade -y
suto apt-get autoremove -y
sudo apt-get clean -y