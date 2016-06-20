#!/bin/sh

BIT=`df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -type d \( -perm -0002 -a ! -perm -1000 \) 2>/dev/null`

if [[ $BIT ]] 
then
	printf "sticky bit not set on\n${BIT}"
else
	echo "sticky bit set on world writeable directories"
fi
