#! /bin/bash

RESULT="`wget -qO- http://localhost:8000/update_check`"

if [ $RESULT ]
then
    wget -q -o updatefile http://localhost:8000/update
    # stop running process
    # move new file to directory and overwrite
    # start new process
fi