#!/bin/sh
# CIS RHEL7 Benchmark
# perfecto25-cis_rhel7


UPDATES=`yum check-update | grep *.el7.*`


if [[ $UPDATES ]] 
then	
	echo "yum updates are available"
fi

