#!/bin/sh
# CIS RHEL7 Benchmark
# perfecto25-cis_rhel7


GPGKEY=`rpm -q --queryformat "%{SUMMARY}\n" gpg-pubkey | grep "(release key) <security@redhat.com>"`


if [[ $GPGKEY ]] 
then	
	echo "RedHat GPG Key installed"
fi

