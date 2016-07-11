#!/bin/sh
# perfecto25-cis_rhel7
# CIS RHEL7 Benchmark
# Rule 1.2.5


UPDATES=`yum check-update | grep el7`


if [[ $UPDATES ]] 
then	
	echo "yum updates are available"
fi

