class cis_rhel7::rule::rule_1_2_2 (
  
  $scripts_dir = $::cis_rhel7::params::scripts_dir
  
) inherits ::cis_rhel7::params {

# includes Rules:
# 1.2.2 - Verify Red Hat GPG Key is Installed (Scored)



## APPLIES TO REDHAT only

if $::operatingsystem == 'RedHat' 
{  

  file { "${scripts_dir}/cis_redhat_gpg.sh":
    ensure => file,
    source => "puppet:///modules/cis_rhel7/cis_redhat_gpg.sh",
    mode   => '0755',
    noop   => false,
  }
  
  $gpgkey = $::redhat_gpg
  
  if $gpgkey == "RedHat GPG Key is not installed" 
  {
    notify { "(1.2.2) - RedHat GPG Key is not installed": }
  }
}
else 
{
  notify { "(1.2.2) - This operating system is not RedHat, skipping rule..": }
}



} #EOF
