#!/bin/bash
#This scripts packages with arguments and if the package is installed it skips

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "ERROR: Please run with sudo or root access"
    exit 1
fi

for package in $@
do
    dnf list installed ${package}
    if [ $? -ne 0 ]; then
        echo "Installing ${package}"
        dnf install ${package} -y 
        validate $? "${package} installtion"
    else
        echo "${package}.. already installed.. SKIPPING"
    fi
done

validate(){
    exit_status=$1
    description=$2
    if [ $exit_status -ne 0 ]; then
        echo "${description} ..FAILED"
        exit 1
    else
        echo "${description} ..SUCCESS"
    fi
}
