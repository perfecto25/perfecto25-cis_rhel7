class cis_rhel7::rule::prereq (

  $scripts_dir = $::cis_rhel7::params::scripts_dir

) inherits ::cis_rhel7::params {


### CIS BENCHMARK PREREQUISITE STEPS

  # location for CIS shell scripts
  
  file { $scripts_dir :
    ensure  => directory,
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    noop    => false,
  }


} #EOF
