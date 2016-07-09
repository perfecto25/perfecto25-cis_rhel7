#!/bin/sh
# CIS Redhat Network Config
# perfecto25-cis_rhel7

RHN=`yum check-update | grep "This system is not registered to Red Hat"`

if [[ $RHN ]] 
then
	echo "not registered with RHN"
else
	echo "registered with RHN"
fi
