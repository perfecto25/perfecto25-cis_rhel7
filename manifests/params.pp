class cis_rhel7::params {
  
# Resource Defaults to NOOP 
File      { noop => true }
File_line { noop => true }
User      { noop => true }
Exec      { noop => true, path => '/usr/bin:/bin' }
Mount     { noop => true } 
Service   { noop => true }

$scripts_dir = '/tmp/cis_scripts'






} #EOF
