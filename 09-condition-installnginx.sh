#!/bin/bash
###In this we are installing Nginx and Mysql##
##points to be noted
#Installing user should have root access if not deny installation

#!/bin/bash

# Check if the user is root
user_id=$(id -u)
echo "Reading user access..."

if ((user_id != 0)); then
    echo "You are not authorized, please check if you are executing with SUDO access."
    exit 1
fi

echo "You are authorized. Installing NGINX..."
dnf install nginx -y

# Verify that the nginx installation command succeeded
if (($? != 0)); then
    echo "Nginx installation failed, please check..."
    exit 1
fi

echo "INSTALLING MYSQL..."
dnf install mysql -y

# Verify that the mysql installation command succeeded
if (($? != 0)); then
    echo "MySQL installation failed, please check..."
    exit 1
fi

echo "BOTH NGINX AND MYSQL ARE INSTALLED ON THE SERVER..."
echo "END"


: << 'COMMENT_BLOCK'
user_id=$(id -u)

if ((user_id != 0)); then
    echo "You are not authorized to execute this script"
    exit 1
fi
echo "You are authorized"
echo "Installing nginx.."
dnf install nginx -y

if (($? =! 0)); then
    echo "Nginx installation success, please check your access"
else
    echo "Nginx installation failed, please check your access"
    exit 1
fi

echo "Installing mysql"
dnf install msql -y
COMMENT_BLOCK



: << 'COMMENT_BLOCK'
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
dnf install nginx -y

if (($? == 0)); then
    echo "INSTALLING MYSQL.."
else
    echo "Nginx installation failed, please check.."
    exit 1
fi
dnf install mysql -y

echo "BOTH NGINX AND MYSQL ARE INSTALLED ON THE SERVER.."

echo "END
COMMENT_BLOCK