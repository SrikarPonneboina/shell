#!/bin/bash

#This scripts installs packages using arguments#

user_id=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $user_id -ne 0 ]; then
    echo -e "${R}ERROR${N}: Please execute with sudo or root access"
    exit 1
fi

validate() {
    exit_status=$1
    description=$2
    if [ $exit_status -ne 0 ]; then
        echo -e "${description}.. ${R}FAILED${N}"
        exit 1
    else
        echo -e "${description}.. ${G}SUCCESS${N}"
    fi
}

for package in $@
do
    echo "Installing ${package}"
    dnf install ${package} -y
    validate $? "${package} Installation"
done

echo "Installation of both packages successfully completed"