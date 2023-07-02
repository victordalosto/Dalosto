#!/bin/bash


echo "#########################"
echo "   Package Upgrade"
echo "#########################"
sudo apt-get update -y 
sudo apt-get full-upgrade -y 
sudo apt-get autoremove -y 
sudo apt-get clean -y



echo ""
echo ""
echo "#########################"
echo " Installing certificates"
echo "#########################"
sudo apt-get install ca-certificates curl gnupg gnupg2 -y
gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "[]"
gsettings set org.gnome.desktop.input-sources xkb-options "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "[]"




echo ""
echo ""
echo "#########################"
echo " Installing certificates"
echo "#########################"
sudo apt-get install iproute2 openssh-server dnsutils -y



echo ""
echo ""
echo "#########################"
echo " Installing Dev Tools"
echo "#########################"
sudo apt-get install chromium-browser git openjdk-17-jdk openjdk-17-source -y
sudo snap install gitkraken --classic && sudo snap install code --classic



echo ""
echo ""
echo "#########################"
echo "    Config Java home"
echo "#########################"
echo JAVA_HOME=\"$(readlink -f $(which java) | sed 's/........$//')\" | sudo tee -a /etc/environment



echo ""
echo ""
echo "#########################"
echo "    VSCODE Extensions   "
echo "#########################"
code --install-extension dracula-theme.theme-dracula ; \
code --install-extension redhat.java ; \
code --install-extension redhat.vscode-xml ; \
code --install-extension VisualStudioExptTeam.intellicode-api-usage-examples ; \
code --install-extension VisualStudioExptTeam.vscodeintellicode ; \
code --install-extension vscjava.vscode-java-pack ; \
code --install-extension vscjava.vscode-java-debug ; \
code --install-extension vscjava.vscode-java-dependency ; \
code --install-extension vscjava.vscode-java-test ; \
code --install-extension vscjava.vscode-maven ; \
code --install-extension ms-python.python



echo ""
echo ""
echo "#########################"
echo "    VSCode settings"
echo "#########################"
sudo cp ./vscode/settings.json $HOME/.config/Code/User/settings.json
sudo cp ./vscode/keybindings.json $HOME/.config/Code/User/keybindings.json



echo ""
echo "#########################"
echo "    Installing Docker"
echo "#########################"
echo ""
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg --y
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
sudo usermod -aG sudo $(whoami)
sudo usermod -aG docker $(whoami)


echo ""
echo "#########################"
echo "    Finishing"
echo "#########################"
echo ""
sudo apt-get update -y && sudo apt-get full-upgrade -y && sudo apt-get autoremove -y && sudo apt-get clean -y
