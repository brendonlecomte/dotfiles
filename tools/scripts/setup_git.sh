#! /bin/bash

read -r -p "Set up Git config? [y/N] " response
if [[ "$response" =~ ^([yY])$ ]]; then
    read -r -p "Whats your name (for git commits)? " name
    read -r -p "Whats your email address? " email

    git config --global user.name $name
    git config --global user.email $email

fi

if [ -n "$email" ]; then
    read -r -p "Set up new SSH key? [y/N] " response
    if [[ "$response" =~ ^([yY])$ ]]; then
        ssh-keygen -o -t rsa -b 4096 -C $email
        eval $(ssh-agent -s)
        ssh-add ~/.ssh/id_rsa
    fi
fi
