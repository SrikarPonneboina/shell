#!/bin/bash

###These are functions that we are using here###
###This shell script is to install nginx and mysql###

echo "checking user access..."
user_id=$(id -u)

echo "This is the user id : $user_id"

#checking..is user running with root privileges..
if ((user_id != 0)); then
    echo "ERROR: you need to run with root or sudo access"
    exit 1
fi

validate(){
    local package=$1
    echo "${package}.. is installing"
    dnf install "${package}" -y

    if (($? == 0)); then
        echo "${package}.. installed successfully"
    else
        echo "${package}..Failed"
        exit 1
    fi
}

validate "nginx"
validate "mysql"










: << 'COMMENT_BLOCK'
if ((user_id != 0)); then
    echo "Nginx installation FAILED"
    exit 1
fi
echo "Nginx intalling successfully..."
dnf install nginx -y

if (($? != 0)); then
    echo "Mysql installation failed.."
    exit 1
fi
echo "Mysql installing successfully.."
dnf install mysql -y

echo "END"
COMMENT_BLOCK