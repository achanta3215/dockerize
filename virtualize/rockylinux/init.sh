#!/bin/bash


# Exit if the flag file exists (already initialized)
if [ -f /tmp/.vagrant_init_done ]; then
	  exit 0
fi

sudo dnf update -y
python -m ensurepip --upgrade
# Podman
pip3 install podman-compose
sudo dnf install -y podman-docker
### Docker Installation
# sudo dnf -y install dnf-plugins-core
# sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
# sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
# sudo systemctl start docker
sudo curl -L "https://github.com/docker/compose/releases/download/v2.26.1/docker-compose-linux-x86_64" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
# DNF Utils
sudo dnf install -y unzip vim
# AWS CLI 
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
# NVIM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc
nvm install 21
nvm alias default 21
# Check for the flag file and create it if it doesn't exist
test -f /tmp/.vagrant_init_done || touch /tmp/.vagrant_init_done

