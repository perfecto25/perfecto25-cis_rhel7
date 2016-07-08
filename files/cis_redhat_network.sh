#!/bin/sh
# CIS Redhat Network Config

RHN=`yum check-update | grep "This system is not registered to Red Hat"`

if [[ $RHN ]] 
then
	echo "not registered with RHN"
else
	echo "registered with RHN"
fi
