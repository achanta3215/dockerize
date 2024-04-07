#!/bin/bash
if [ -d ".vagrant" ]; then
    echo ".vagrant directory exists."
    vagrant up --provision
# Perform actions if the directory exists
else
    echo ".vagrant directory does not exist."
    vagrant up
    vagrant ssh -t -- 'sudo dnf update -y'
    vagrant halt
    vagrant up --provision
# Perform actions if the directory doesn't exist
fi

