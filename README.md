# cis_rhel7

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with cis_rhel7](#setup)
    * [What cis_rhel7 affects](#what-cis_rhel7-affects)
    * [Setup requirements](#setup-requirements)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

This is a Puppet implementation of CIS (Center for Internet Security) Benchmarks for RedHat Enterprise 7 servers.
This module contains numbered rules corresponding to the CIS Benchmark document (version 1.0) found here

https://benchmarks.cisecurity.org/tools2/linux/CIS_Red_Hat_Enterprise_Linux_7_Benchmark_v1.0.0.pdf


## Setup

### What cis_rhel7 affects

This module does not change anything on your test systems, it is merely an auditing and reporting tool that reports back with any found vulnerabilities. The way this module controls various server components (files, directories, services, packages, etc) is with a Puppet "noop" parameter, Puppet will try to enforce a declared state with a no-op flag, and will return any inconsitencies.

If you'd like this module to enforce the actual rules on your nodes, open up the $module/manifests/params.pp file and edit the Resource Defaults, set the NOOP parameter to "false"

### Setup Requirements

This module requires 2 additional modules

1. puppetlabs-stdlib

2. herculesteam-augeasproviders_pam


## Usage

To use this module, clone it from git into your basemodule path and assign your nodes to the 'cis_rhel7' class. The next time your agents run, they will run a full CIS compliance check and report inconsitencies. 

*Make sure to run this module at least 2 times on each node, as the first run will generate the facts, the 2nd run will give the fact output.*

Each rule within the benchmark reports the specific rule number that can be referenced in the CIS document. 

To include or exclude specific rules, open the $module/manifests/init.pp and comment out any rule #s that you do not want to test for. 

*Note* - not all rules can be handled directly by Puppet. For those that cannot be handled by Puppet's Resources, there are a number of shell scripts under $module/files directory. 

The shell scripts are copied to the node into /tmp/cis_scripts directory. The manifest that does this is $module/manifests/rule/prereq.pp

These scripts generate output that gets captured by Puppet custom facts. The custom fact is located in $module/lib/facter directory, its a single fact that generates a number of custom facts with a "cis_" prefix.

To see these custom facts, run "facter -p"


## Limitations

This module was tested using Puppet 4.5 [PE 2016.2] (Note: it will not work on any Puppet version less than 4.0) as the Master (running on Ubuntu 14.04), tested on 

1. RedHat 7 x64

2. CentOS 7 x64

## Development

Testing is welcome, please log any issues here,

[cis_rhel7 issues list](https://github.com/perfecto25/perfecto25-cis_rhel7/issues "cis_rhel7 issues list")


## Release Notes/Contributors/Etc. **Optional**

cis_rhel7 module developed by perfecto25
you can contact me via GitHub 
