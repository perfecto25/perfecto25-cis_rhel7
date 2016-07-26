#!/bin/sh
# perfecto25-cis_rhel7
# CIS RHEL7 Benchmark
# Rule 1.4.6


## REDHAT ONLY

UD=`ps -eZ | egrep "initrc" | egrep -vw "tr|ps|egrep|bash|awk" | tr ':' ' ' | awk '{
print $NF }'`


if [[ $UD ]] 
then	
	echo $UD
fi

