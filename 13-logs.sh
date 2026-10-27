#!/bin/bash
#installing nginx and mysql using functions 
user_id=$(id -u)
logs_folder="/var/log/shell-practicelogs"
logs_file="${logs_folder}/${0}.log"

echo "This is the user id = $user_id" 

if [ $user_id -ne 0 ]; then
    echo "ERROR: you need to run with sudo access or root" 
    exit 1
fi
mkdir -p $logs_folder

echo "script execution started at $(date)" 
validate(){
    exitstatus=$1
    description=$2
    if [ $exitstatus -ne 0 ]; then
        echo "${description}...FAILED" | tee -a &>> $log_file
        exit 1
    else
        echo "${description}...SUCCESS" | tee -a &>> $log_file
    fi
}

echo "Installing packages.."
dnf install nginx -y &>> $log_file
validate $? "Nginx installation"

dnf install mysql -y &>> $log_file
validate $? "Mysql installation"

echo "package installation completed.." 
echo "script execution completed at $(date)" 