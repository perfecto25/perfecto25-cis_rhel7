class cis_rhel7 { 
# Reference for this Module:
# CIS_Red_Hat_Enterprise_Linux_7_Benchmark_v1.0.0.pdf


  # Resource Defaults to NOOP
  resources { 'file':
    purge => true,
    noop => true,
  }
  
  File      { noop => true }
  File_line { noop => false }
  User      { noop => true }
  Exec      { noop => true, path => '/usr/bin/' }
  Mount     { noop => false }


  ### include required Classes
  include ::stdlib


  include ::cis_rhel7::rule::r111
  include ::cis_rhel7::rule::r115

} 
