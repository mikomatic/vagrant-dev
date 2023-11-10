#!/bin/bash
echo "**** Updating packages ..."
#ensure non-interactive updates
export DEBIAN_FRONTEND=noninteractive
# Update to latest packages
sudo apt update
sudo apt upgrade -y
echo "**** Begin installing ubuntu-desktop ..."
sudo apt install ubuntu-desktop -y
echo "**** Begin installing ubuntu-desktop ... END"

echo "**** Adding dev user ..."
sudo adduser --disabled-password --gecos "" dev
sudo usermod -aG sudo dev
echo "dev:dev" | sudo chpasswd
echo "**** Adding dev user ... END"

sudo shutdown -r now
echo "**** End installing Ubuntu, etc"