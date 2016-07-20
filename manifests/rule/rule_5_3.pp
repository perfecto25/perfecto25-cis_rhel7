class cis_rhel7::rule::rule_5_3 {

# includes Rules:
# 5.3 - Configure logrotate (Not Scored)


$file = '/etc/logrotate.d/syslog'

file { "(5.3) - ${file} exists":
  name    => $file,
  ensure  => file,
  mode    => '0644',
  owner   => 'root',
  group   => 'root',
}

$logs = [ '/var/log/messages','/var/log/secure','/var/log/maillog','/var/log/spooler','/var/log/boot.log','/var/log/cron' ]

each ($logs) |$log| {
 
  file_line { "(5.3) - ${file}: ${log}":
    ensure    => present,
    path      => $file,
    line      => $log,
    match	  => "^${rule}",
    multiple  => false,
  }
}


} #EOF
