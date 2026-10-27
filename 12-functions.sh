#!/bin/bash
#installing nginx and mysql using functions 
user_id=$(id -u)

echo "This is the user id = $user_id"

if [ $user_id -ne 0 ]; then
    echo "ERROR: you need to run with sudo access or root"
    exit 1
fi

validate(){
    last_exitstatus=$1
    description=$2
    if [ $1 -ne 0 ]; then
        echo "${2}...FAILED"
        exit 1
    else
        echo "${2}...SUCCESS"
    fi
}


echo "Installing packages.."
dnf install nginx -y 
validate $? "Nginx installation"

dnf install mysql -y
validate $? "Mysql installation"

echo "package installation completed.."
