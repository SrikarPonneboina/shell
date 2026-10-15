#!/bin/bash
###In this we are installing Nginx and Mysql##
##points to be noted
#Installing user should have root access if not deny installation


user_id=$(id -u)
echo "Reading user access.."

if ((user_id == 0)); then
    echo "You are authorized"
else 
    echo "You are not authorized, please check are you executing with SUDO access"
    exit 1
fi

if (($? == 0)); then
    echo "Installing nignx..."
else
    echo "please check your access.."
    exit 1
fi

echo "NGINX INSTALLING SUCCESSFULLY..."
dnf isntall nginx -y

if (($? == 0)); then
    echo "INSTALLING MYSQL.."
else
    echo "Nginx installation failed, please check.."
    exit 1
fi
dnf install mysql -y

echo "BOTH NGINX AND MYSQL ARE INSTALLED ON THE SERVER.."

echo "END"

