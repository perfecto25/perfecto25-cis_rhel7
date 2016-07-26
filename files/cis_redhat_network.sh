#!/bin/sh
# perfecto25-cis_rhel7
# CIS Redhat Network Config
# Rule 1.2.1 

## REDHAT ONLY

RHN=`yum check-update | grep "This system is not registered to Red Hat"`

if [[ $RHN ]] 
then
	echo "not registered with RHN"
fi
