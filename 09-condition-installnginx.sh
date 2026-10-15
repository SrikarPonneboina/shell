#!/bin/bash
###In this we are installing Nginx and Mysql##
##points to be noted
#Installing user should have root access if not deny installation

echo "Reading user access.."
user_id=$(id-u)

if ((user_id == 0)); then
    echo "Installing nignx..."
else
    echo "you are not authorized to run this script.."
fi
exit 1
dnf isntall nginx -y
echo "NGINX INSTALLED SUCCESSFULLY..."

if (($? <= 0)); then
    echo "INSTALLING MYSQL.."
else
    echo "Previous installation failed, please check.."
fi
dnf install mysql -y
exit 1

echo "Both nginx and mysql are installe in the server.."

echo "END"

