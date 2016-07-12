class cis_rhel7::rule::rule_1_2_5 (
  $scripts_dir = $::cis_rhel7::params::scripts_dir
) inherits ::cis_rhel7::params {

# includes Rules:
# 1.2.5 - Obtain Software Package Updates with yum (Not Scored)

file { "${scripts_dir}/cis_yumupdates.sh":
  ensure  => file,
  source  => "puppet:///modules/cis_rhel7/cis_yumupdates.sh",
  mode    => '0755',
  noop    => false,
}

$updates = $::cis_yum_updates

if $updates == "yum updates are available"
{
  notify { "(1.2.5) - Yum updates are available for this host": }
}




} #EOF
