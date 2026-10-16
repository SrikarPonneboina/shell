#!/bin/bash

###These are functions that we are using here###
###This shell script is to install nginx and mysql###

echo "checking user access..."
user_id=$(id -u)

echo "This is the user id : $user_id"

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
