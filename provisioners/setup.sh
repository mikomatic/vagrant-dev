#!/bin/bash

set -euxo pipefail

#ensure non-interactive updates
export DEBIAN_FRONTEND=noninteractive

echo "**** Updating packages ..."
# Update to latest packages
sudo apt update
sudo apt upgrade -yq
echo "**** Updating packages ..."
echo "**** Installing ubuntu-desktop ..."
sudo apt install ubuntu-desktop -yq
echo "**** Installing ubuntu-desktop ... END"

# Add user dev with dev password
sudo adduser --disabled-password --gecos "" dev
echo "dev:dev" | sudo chpasswd
# Add make dev user sudoer
sudo usermod -aG sudo dev
# Enable passwordless sudo for dev user
sudo touch /etc/sudoers.d/dev
echo "dev ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers.d/dev > /dev/null

# restart the machine
sudo shutdown -r now