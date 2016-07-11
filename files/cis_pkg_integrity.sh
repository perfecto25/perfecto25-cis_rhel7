#!/bin/sh
# perfecto25-cis_rhel7
# CIS RHEL7 Benchmark
# Rule 1.2.6


PKG=`rpm -qVa | awk '$2 != "c" { print $0}'`


if [[ $PKG ]] 
then	
	echo $PKG
fi

