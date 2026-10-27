#!/bin/bash
#This scripts packages with arguments and if the package is installed it skips

user_id=$(id -u)
logs_folder="/var/log/shelllogs"
logs_file="${logs_folder}/${0}.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $user_id -ne 0 ]; then
    echo "ERROR: Please run with sudo or root access"
    exit 1
fi
mkdir -p ${logs_folder}

for package in $@
do
    dnf list installed ${package}
    if [ $? -ne 0 ]; then
        echo -e "Installing ${Y}${package}${N}"
        dnf install ${package} -y 
        validate $? "${package} installtion"
    else
        echo -e "${package}.. already installed.. ${Y}SKIPPING${N}"
    fi
done

validate(){
    exit_status=$1
    description=$2
    if [ $exit_status -ne 0 ]; then
        echo -e "${description} ..${R}FAILED${N}"
        exit 1
    else
        echo -e "${description} ..${G}SUCCESS${N}"
    fi
}
