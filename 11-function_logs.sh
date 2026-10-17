#!/bin/bash
echo "checking user access..."
user_id=$(id -u)
logs_folder=/var/log/shell-logs
log_file=${logs_folder}/${0}.log

#checking..is user running with root privileges..
if ((user_id != 0)); then
    echo "ERROR: you need to run with root or sudo access"
    exit 1
fi

mkdir -p $logs_folder

echo "Script started at $(date +"%F %T")" &>> $log_file

validate(){
    local package=$1 
    echo "${package}.. is installing" | tee -a $log_file
    dnf install "${package}" -y &>> $log_file

    if (($? == 0)); then
        echo "${package}.. installed successfully" | tee -a $log_file
    else
        echo "${package}..Failed" | tee -a $log_file
        exit 1
    fi
}

validate "nginx"
validate "mysql"
echo "Script completed at $(date +"%F %T")" &>> $log_file