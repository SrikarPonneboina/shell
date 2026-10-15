#!/bin/bash
###In this we are installing Nginx and Mysql##
##points to be noted
#Installing user should have root access if not deny installation

echo "Reading user access.."
user_id=$(id -u)

if ((user_id == 0)); then
    echo "Installing nignx..."
else
    echo "you are not authorized to run this script.."
    exit 1
fi

dnf isntall nginx -y
echo "NGINX INSTALLED SUCCESSFULLY..."

if (($? == 0)); then
    echo "INSTALLING MYSQL.."
else
    echo "Previous installation failed, please check.."
    exit 1
fi
dnf install mysql -y

echo "BOTH NGINX AND MYSQL ARE INSTALLED ON THE SERVER.."

echo "END"

