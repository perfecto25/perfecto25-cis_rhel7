class cis_rhel7::rule::rule_5_3 (

  $logs = $::cis_rhel7::params::logs

) inherits cis_rhel7::params {

# includes Rules:
# 5.3 - Configure logrotate (Not Scored)


$file = '/etc/logrotate.d/syslog'

file { "(5.3) - ${file} exists":
  name   => $file,
  ensure => file,
  mode   => '0644',
  owner  => 'root',
  group  => 'root',
}



each ($logs) |$log| {

  file_line { "(5.3) - ${file}: ${log}":
    ensure   => present,
    path     => $file,
    line     => $log,
    match    => "^${rule}",
    multiple => false,
  }
}


} #EOF
