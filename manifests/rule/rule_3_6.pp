class cis_rhel7::rule::rule_3_6 {

# includes Rules:
# 3.6 - Configure Network Time Protocol (NTP) (Scored)

package { '(3.6) - NTP installed':
  name   => 'ntp',
  ensure => present,
}

$file = '/etc/ntp.conf'

file { '(3.6) - NTP conf file exists':
  path    => $file,
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  require => Package['(3.6) - NTP installed'],
}

service { '(3.6) - NTP service running':
  name      => 'ntpd',
  ensure    => running,
  subscribe => File[$file],
}

file_line { "(3.6) - restrict default in ${file}":
  ensure => present,
  path   => $file,
  line   => 'restrict default kod nomodify notrap nopeer noquery'
}

file_line { "(3.6) - restrict -6 default in ${file}":
  ensure => present,
  path   => $file,
  line   => 'restrict -6 default kod nomodify notrap nopeer noquery'
}

file_line { "(3.6) - ${file} contains NTP servers":
  ensure   => present,
  path     => $file,
  line     => 'server',
  match    => '^server.*$',
  multiple => true,
  replace  => false,
}

file_line { '(3.6) - /etc/sysconfig/ntpd OPTIONS':
  ensure => present,
  path   => '/etc/sysconfig/ntpd',
  line   => 'OPTIONS="-u ntp:ntp -p /var/run/ntpd.pid"',
  match  => '^OPTIONS.*$',
}


} #EOF
