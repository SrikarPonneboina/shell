#!/bin/bash

user_id=$(id -u)

echo "This is the user id = $user_id"

if [$user_id -ne 0]; then
    echo "ERROR: you need to run with sudo access or root"
    exit 1
fi
