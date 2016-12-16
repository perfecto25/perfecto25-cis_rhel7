class cis_rhel7::rule::rule_3_1 {

# includes Rules:
# 3.1 - Set Daemon umask (Scored)

$file = '/etc/sysconfig/init'

if $::operatingsystem == 'RedHat'
{

  file { "(3.1) - ${file} exists":
    path   => $file,
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }

  file_line { "(3.1) - ${file} umask 027":
    ensure => present,
    path   => $file,
    line   => 'umask 027',
    match  => '^umask 027',
  }

}
else
{
  notify { '(3.1) - This operating system is not RedHat, skipping..': }
}


} #EOF
