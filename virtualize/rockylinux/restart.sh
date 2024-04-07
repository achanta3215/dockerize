#!/bin/bash
vagrant destroy -y
vagrant up
vagrant ssh -t "sudo dnf update -y"
vagrant halt
vagrant up
