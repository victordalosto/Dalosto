#!/bin/bash
# Updates and upgrades linux-ubuntu 
set -e
sudo apt-get update -y
sudo apt-get upgrade -y
suto apt-get autoremove -y
sudo apt-get clean -y