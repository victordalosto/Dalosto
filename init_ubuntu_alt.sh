#!/bin/bash

# Updates and upgrades linux-ubuntu 
set -e
sudo apt-get update -y
sudo apt-get upgrade -y
suto apt-get autoremove -y
sudo apt-get clean -y

# Install main packages
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
# MANUAL