# Yicheng Wang
# CSE 374 hw 3 Q3
# 1/24/2017

#!/bin/bash

i=1
total=$(wc -l < $1)

# replace the old file if it already exists
if [ -e $2 ]
then
    echo -n > $2
fi

while [ $i -le $total ]
do
    url=$(sed -n ${i}p $1)
    echo "Performing measurement on $url"
    size=$(./perform-measurement.sh $url)

    if [ $size -ne 0 ]
    then
	echo "...sucess" 
	echo "${i} $url $size" >> $2

    else
	echo "...failed"
    fi

    (( i=$i+1 ))
done
