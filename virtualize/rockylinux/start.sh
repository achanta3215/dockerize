#!/bin/bash
if [[ $1 == "--init" ]]; then
    echo "Initializing"
    vagrant up
    vagrant scp ~/.ssh/id_ed25519.pub /home/vagrant/.ssh
    vagrant ssh -t -- 'sudo dnf update -y'
    vagrant halt
    vagrant up --provision
# Perform actions if the directory exists
else
    vagrant up --provision
# Perform actions if the directory doesn't exist
fi

