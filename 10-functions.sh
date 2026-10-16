#!/bin/bash

###These are functions that we are using here###
###This shell script is to install nginx and mysql###

echo "checking user access..."
user_id=$(id -u)

echo "This is the user id : $user_id"
