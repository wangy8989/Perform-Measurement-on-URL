# Yicheng Wang
# CSE 374 hw3 Q2
# 1/24/2017

#!/bin/bash
 
if [ $# -lt 2 ]
then
    echo "Should have 2 argument." >&2
    exit 1
fi

if [ -e $1 ]
then
    grep 'http:[//]' $1 | sed 's/.*\(http:[//].*\)["].*/\1/g' | sed '/100bestwebsites/d' | sed '/en.wikipedia/d' | sed '$d' > $2

else
    echo "The file does not exist." >&2
    exit 1
fi
