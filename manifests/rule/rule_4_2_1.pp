class cis_rhel7::rule::rule_4_2_1 {

# includes Rules:
# 4.2.1 - Disable Source Routed Packet Acceptance (Scored)
# 4.2.2 - Disable ICMP Redirect Acceptance (Scored)
# 4.2.3 - Disable Secure ICMP Redirect Acceptance (Scored)
# 4.2.4 - Log Suspicious Packets (Scored)
# 4.2.5 - Enable Ignore Broadcast Requests (Scored)
# 4.2.6 - Enable Bad Error Message Protection (Scored)
# 4.2.7 - Enable RFC-recommended Source Route Validation (Scored)
# 4.2.8 - Enable TCP SYN Cookies (Scored)

$file = '/etc/sysctl.conf'

file_line { "(4.2.1) - ${file}: all.accept_source_route=0":
  ensure => present,
  path   => $file,
  line   => 'net.ipv4.conf.all.accept_source_route=0',
  match  => '^net.ipv4.conf.all.accept_source_route',
}


file_line { "(4.2.1) - ${file}: default.accept_source_route=0":
  ensure => present,
  path   => $file,
  line   => 'net.ipv4.conf.default.accept_source_route=0',
  match  => '^net.ipv4.conf.default.accept_source_route',
}

file_line { "(4.2.2) - ${file}: all.accept_redirects=0":
  ensure => present,
  path   => $file,
  line   => 'net.ipv4.conf.all.accept_redirects=0',
  match  => '^net.ipv4.conf.all.accept_redirects=0',
}


file_line { "(4.2.2) - ${file}: default.accept_redirects=0":
  ensure => present,
  path   => $file,
  line   => 'net.ipv4.conf.default.accept_redirects=0',
  match  => '^net.ipv4.conf.default.accept_redirects=0',
}

file_line { "(4.2.3) - ${file}: all.secure_redirects=0":
  ensure => present,
  path   => $file,
  line   => 'net.ipv4.conf.all.secure_redirects=0',
  match  => '^net.ipv4.conf.all.secure_redirects=0',
}

file_line { "(4.2.3) - ${file}: default.secure_redirects=0":
  ensure => present,
  path   => $file,
  line   => 'net.ipv4.conf.default.secure_redirects=0',
  match  => '^net.ipv4.conf.default.secure_redirects=0',
}

file_line { "(4.2.4) - ${file}: all.log_martians=1":
  ensure => present,
  path   => $file,
  line   => 'net.ipv4.conf.all.log_martians=1',
  match  => '^net.ipv4.conf.all.log_martians=1',
}

file_line { "(4.2.4) - ${file}: default.log_martians=1":
  ensure => present,
  path   => $file,
  line   => 'net.ipv4.conf.default.log_martians=1',
  match  => '^net.ipv4.conf.default.log_martians=1',
}

file_line { "(4.2.5) - ${file}: icmp_echo_ignore_broadcasts=1":
  ensure => present,
  path   => $file,
  line   => 'net.ipv4.icmp_echo_ignore_broadcasts=1',
  match  => '^net.ipv4.icmp_echo_ignore_broadcasts',
}

file_line { "(4.2.6) - ${file}: icmp_ignore_bogus_error_responses=1":
  ensure => present,
  path   => $file,
  line   => 'net.ipv4.icmp_ignore_bogus_error_responses=1',
  match  => '^net.ipv4.icmp_ignore_bogus_error_responses',
}

file_line { "(4.2.7) - ${file}: all.rp_filter=1":
  ensure => present,
  path   => $file,
  line   => 'net.ipv4.conf.all.rp_filter=1',
  match  => '^net.ipv4.conf.all.rp_filter',
}

file_line { "(4.2.7) - ${file}: default.rp_filter=1":
  ensure => present,
  path   => $file,
  line   => 'net.ipv4.conf.default.rp_filter=1',
  match  => '^net.ipv4.conf.default.rp_filter',
}

file_line { "(4.2.8) - ${file}: net.ipv4.tcp_syncookies=1":
  ensure => present,
  path   => $file,
  line   => 'net.ipv4.tcp_syncookies=1',
  match  => '^net.ipv4.tcp_syncookies',
}



} #EOF
