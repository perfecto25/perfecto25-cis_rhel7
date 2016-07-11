class cis_rhel7::rule::rule_1_2_1 (

  $scripts_dir = $::cis_rhel7::params::scripts_dir

) inherits ::cis_rhel7::params {

#includes Rules:
# 1.2.1 - Configure Connection to the RHN RPM Repositories (Not Scored)



## APPLIES TO REDHAT only

if $::operatingsystem == 'RedHat' 
{  

  file { "${scripts_dir}/cis_redhat_network.sh":
    ensure => file,
    source => "puppet:///modules/cis_rhel7/cis_redhat_network.sh",
    mode   => '0755',
    noop   => false,
  }
  
  $redhat_network = $::redhat_network
  
  if $redhat_network == "not registered with RHN" 
  {
    notify { "(1.2.1) - RedHat Repository is not configured": }
  }
}
else 
{
  notify { "(1.2.1) - This operating system is not RedHat, skipping rule..": }
}



} #EOF
