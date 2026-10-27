#!/bin/bash

#These script installs nginx and mysql

user_id=$(id -u)
logs_folder="/var/log/shell-practice"
logs_file="${logs_folder}/${0}.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $user_id -ne 0 ]; then
    echo "ERROR: please execute the script with sudo or root access"
    exit 1
fi
mkdir -p $logs_folder

echo "Script executed at $(date +"%F %T")"
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

echo "Installing packages.."
dnf install ngix -y 
validate $? "Nginx installation"

dnf install mysql -y
validate $? "Mysql installation"

echo "both packages installed successfully"
echo "Script execution completed at $(date +"%F %T")"
