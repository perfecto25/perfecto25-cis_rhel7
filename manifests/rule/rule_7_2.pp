class cis_rhel7::rule::rule_7_2 (

  $scripts_dir = $::cis_rhel7::params::scripts_dir

) inherits ::cis_rhel7::params {

#includes Rules:
# 7.2 - Set Password Expiration Days (Scored)

file { "${scripts_dir}/cis_disable_sys_acct.sh":
  ensure => file,
  source => "puppet:///modules/cis_rhel7/cis_disable_sys_acct.sh",
  mode   => '0755',
  noop   => false,
}

$system_acct = $::cis_system_accounts

if ($system_acct != "") {
    notify { "(7.2) - System accounts not disabled: ${system_acct}": }
}


} #EOF
