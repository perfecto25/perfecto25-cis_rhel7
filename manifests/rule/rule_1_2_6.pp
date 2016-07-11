class cis_rhel7::rule::rule_1_2_6 (
  $scripts_dir = $::cis_rhel7::params::scripts_dir
) inherits ::cis_rhel7::params {

# includes Rules:
# 1.2.5 - Obtain Software Package Updates with yum (Not Scored)

file { "${scripts_dir}/cis_pkg_integrity.sh":
  ensure  => file,
  source  => "puppet:///modules/cis_rhel7/cis_pkg_integrity.sh",
  mode    => '0755',
  noop    => false,
}

$pkg = $::pkg_integrity

if $pkg != ""
{
  notify { "(1.2.6) - Installed packages did not pass integrity check": }
}




} #EOF
