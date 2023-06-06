#!/bin/bash

# Updates and upgrades Linux 
sudo apt-get update -y
sudo apt-get full-upgrade -y
sudo apt-get autoremove -y
sudo apt-get clean -y

# Install utils
sudo apt-get install ca-certificates -y
sudo apt-get install curl -y 
sudo apt-get install gnupg -y
sudo apt-get install gnupg2 -y

# Install importante packages
sudo apt-get install iproute2 -y
sudo apt install openssh-server -y
sudo apt install dnsutils -y

# Install developer packages
sudo apt-get install chromium-browser -y
sudo apt-get install git -y
sudo apt-get install openjdk-17-jdk -y
sudo apt-get install openjdk-17-source -y 
sudo snap install gitkraken --classic
sudo snap install code --classic

# Install docker
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# Configuring JAVA_HOME
sudo echo JAVA_HOME=\"$(readlink -f $(which java) | sed 's/........$//')\" >> /etc/environment

# Install VSCODE extensions
code --install-extension dracula-theme.theme-dracula
code --install-extension redhat.java
code --install-extension redhat.vscode-xml
code --install-extension VisualStudioExptTeam.intellicode-api-usage-examples
code --install-extension VisualStudioExptTeam.vscodeintellicode
code --install-extension vscjava.vscode-java-pack
code --install-extension vscjava.vscode-java-debug
code --install-extension vscjava.vscode-java-dependency
code --install-extension vscjava.vscode-java-test
code --install-extension vscjava.vscode-maven
code --install-extension rafapaulin.try-material-icon-theme
code --install-extension ritwickdey.LiveServer
code --install-extension vscjava.vscode-spring-boot-dashboard
code --install-extension vscjava.vscode-spring-initializr

# Install VSCODE settings and keybindings
cp ./vscode/settings.json $HOME/.config/Code/User/settings.json
cp ./vscode/keybindings.json $HOME/.config/Code/User/keybindings.json

# Gives sudo to user
sudo usermod -aG sudo victor
sudo usermod -aG docker victor

# Update view
gsettings set org.gnome.shell favorite-apps "['org.gnome.Nautilus.desktop', 'org.gnome.Terminal.desktop', 'gitkraken_gitkraken.desktop', 'code_code.desktop', 'gnome-control-center.desktop', 'chromium_chromium.desktop']"

# Update keyboard input type to pt-br
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'br')]"

# Change black screen delay
gsettings set org.gnome.desktop.session idle-delay 1800

# New update calls
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get autoremove -y
sudo apt-get clean -y
