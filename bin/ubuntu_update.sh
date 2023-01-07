#!/bin/bash
# Updates and upgrades linux-ubuntu 
set -e
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
suto ap autoremove