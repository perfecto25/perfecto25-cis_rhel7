class cis_rhel7::rule::rule_1_4_6 (
  $scripts_dir = $::cis_rhel7::params::scripts_dir
) inherits ::cis_rhel7::params {

# includes Rules:
# 1.4.6 - Check for Unconfined Daemons (Scored)

file { "${scripts_dir}/cis_unconfined_daemons.sh":
  ensure  => file,
  source  => "puppet:///modules/cis_rhel7/cis_unconfined_daemons.sh",
  mode    => '0755',
  noop    => false,
}

$ud = $::cis_unconfined_daemons

if $ud != ""
{
  notify { "(1.4.6) - Unconfined daemons present: ${ud}": }
}




} #EOF
