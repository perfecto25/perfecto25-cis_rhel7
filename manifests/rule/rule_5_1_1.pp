class cis_rhel7::rule::rule_5_1_1 (

  $contents = $::cis_rhel7::params::contents

) inherits cis_rhel7::params {

# includes Rules:
# 5.1.1 - Install the rsyslog package (Scored)
# 5.1.2 - Activate the rsyslog Service (Scored)
# 5.1.3 - Configure /etc/rsyslog.conf (Not Scored)
# 5.1.4 - Create and Set Permissions on rsyslog Log Files (Scored)
# 5.1.5 - Configure rsyslog to Send Logs to a Remote Log Host (Scored)
# 5.1.6 - Accept Remote rsyslog Messages Only on Designated Log Hosts (Not Scored)

package { '(5.1.1) - Rsyslog installed':
  name   => 'rsyslog',
  ensure => installed,
}

service { '(5.1.2) - Rsyslog service running':
  name      => 'rsyslog',
  ensure    => running,
  subscribe => File['(5.1.3) - /etc/rsyslog.conf exists'],
}

$file = '/etc/rsyslog.conf'

file { "(5.1.3) - ${file} exists":
  name    => $file,
  ensure  => file,
  mode    => '0644',
  owner   => 'root',
  group   => 'root',
  require => Package['(5.1.1) - Rsyslog installed'],
}

each($contents) |$item| {

  file_line { "(5.1.3) - ${file}: contains  ${item}":
  ensure => present,
  path   => $file,
  line   => $item,
  }

  $logfile = split($item, '[\s]')

  file { "(5.1.4) - ${logfile[1]} permissions: 0640":
    name   => $logfile[1],
    ensure => file,
    mode   => '0640',
    owner  => 'root',
    group  => 'root',
  }

}


file_line { "(5.1.5) - ${file}: Remote host configured":
  ensure => present,
  path   => $file,
  line   => '*.* @@loghost.company.com',
  match  => '^*.*.@@.*$',
  # multiple  => true,
  #replace   => false,
}

file_line { "(5.1.6) - ${file}: \$ModLoad imtcp.so":
  ensure => present,
  path   => $file,
  line   => '$ModLoad imtcp.so',
}

file_line { "(5.1.6) - ${file}: \$InputTCPServerRun 514":
  ensure => present,
  path   => $file,
  line   => '$InputTCPServerRun 514',
}

} #EOF
