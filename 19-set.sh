#!/bin/bash

set -e

trap 'echo "Error at "$LINENO" , command: "$BASH_COMMAND"' ERR

user_id=$(id -u)
if [ $user_id -ne 0 ]; then
    echo "ERROR: Please run with sudo or root access"
    exit 1
fi

for package in $@
do
    dnf list installed $package 
    if [ $? -ne 0 ]; then
        dnf install ${package} -y
        echo "${package} installed successfully"
    else
        echo "${package}..already installed..SKIPPING"
    fi
done
