# Yicheng Wang
# CSE 374 hw3 Q1
# 1/24/2017

#!/bin/bash

if [ $# -eq 0 ]
then
    echo "Should have 1 argument." >&2
    exit 1
fi

# make a temporary directory with random name and discard the output of this command
mktemp -d tmp.XXX > /dev/null
cd tmp.*

# download the file through url into tmp.XXX
# discard any error message if failed to download within 30s for 3 times
wget -t 3 -T 30 $1 2> /dev/null
cd ..

# if it successfully downloaded url and there is file in the directory, do word count. otherwise, print number 0.
if [ -e ./tmp.*/* ] 
then
    wc -c < ./tmp.*/*

else
    echo "0" 
    rm -r tmp.*
    exit 1
fi

# remove the temporary directory
rm -r tmp.*

