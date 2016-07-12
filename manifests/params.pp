class cis_rhel7::params {
  
# Resource Defaults to NOOP 
File      { noop => true }
File_line { noop => true }
User      { noop => true }
Exec      { noop => true, path => '/usr/bin:/usr/sbin:/bin' }
Mount     { noop => true } 
Service   { noop => true }
Package   { noop => true }
Cron      { noop => true }

$scripts_dir = '/tmp/cis_scripts'






} #EOF
