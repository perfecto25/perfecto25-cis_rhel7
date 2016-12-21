class cis_rhel7::rule::prereq (

  $cis_scripts_dir  = $::cis_rhel7::params::cis_scripts_dir,
  $cis_scripts     = $::cis_rhel7::params::cis_scripts

) inherits ::cis_rhel7::params {


### CIS BENCHMARK PREREQUISITE STEPS


# location for CIS shell scripts

file { $cis_scripts_dir :
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
    noop   => false,
  }


# place CIS shell script on each node

each($cis_scripts) |$item| {

  file { "${cis_scripts_dir}/${item}":
    ensure   => file,
      source => "puppet:///modules/cis_rhel7/${item}",
      mode   => '0755',
      noop   => false,
  }
  }

} #EOF

