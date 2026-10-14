#!/bin/bash

##These are all special variables##

echo "All arguments passed to the script : $@ "
echo "All arguments passed to the script as word $*"
echo "No of arguments passed to the script : $#"
echo "Print only the first parameter passed: $1"
echo "script Name : $0"
echo "Real path = $(realpath $0)"
echo "who is running the current script : $USER"
echo "Directory of the script : $PWD"
echo "Home directory of the user : $HOME"
echo "PID of the current script : $$"
sleep 10 &
echo "PID of the command running in the background : $!"
wait $! #here script waits until $! command completes
echo "Print Line Number: $LINENO"
echo "previous command exit status: $?"
echo "Total time executed for this script : $SECONDS"