#!/bin/bash
# Updates and upgrades linux-ubuntu 
set -e
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
suto apt autoremove -y
sudo apt clean -y