class cis_rhel7::rule::rule_2_1_1 {

# includes Rules:
# 2.1.1 - Remove telnet-server (Scored)
# 2.1.2 - Remove telnet Clients (Scored)
# 2.1.3 - Remove rsh-server (Scored)
# 2.1.4 - Remove rsh (Scored)
# 2.1.5 - Remove NIS Client (Scored)
# 2.1.6 - Remove NIS Server (Scored)
# 2.1.7 - Remove tftp (Scored)
# 2.1.8 - Remove tftp-server (Scored)
# 2.1.9 - Remove talk (Scored)
# 2.1.10 - Remove talk-server (Scored)
# 2.1.11 - Remove xinetd (Scored)
# 2.1.12 - Disable chargen-dgram (Scored)
# 2.1.13 - Disable chargen-stream (Scored)
# 2.1.14 - Disable daytime-dgram (Scored)
# 2.1.15 - Disable daytime-stream (Scored)
# 2.1.16 - Disable echo-dgram (Scored)
# 2.1.17 - Disable echo-stream (Scored)
# 2.1.18 - Disable tcpmux-server (Scored)


package { '(2.1.1) - Telnet server removed':
  name   => 'telnet-server',
  ensure => absent,
}

package { '(2.1.2) - Telnet client removed':
  name   => 'telnet',
  ensure => absent,
}

package { '(2.1.3) - RSH server removed':
  name   => 'rsh-server',
  ensure => absent,
}

package { '(2.1.4) - RSH client removed':
  name   => 'rsh',
  ensure => absent,
}

package { '(2.1.5) - NIS client removed':
  name   => 'ypbind',
  ensure => absent,
}


package { '(2.1.6) - NIS server removed':
  name   => 'ypserv',
  ensure => absent,
}

package { '(2.1.7) - TFTP client removed':
  name   => 'tftp',
  ensure => absent,
}

package { '(2.1.8) - TFTP server removed':
  name   => 'tftp-server',
  ensure => absent,
}

package { '(2.1.9) - Talk client removed':
  name   => 'talk',
  ensure => absent,
}


package { '(2.1.10) - Talk server removed':
  name   => 'talk-server',
  ensure => absent,
}


package { '(2.1.11) - Xinetd removed':
  name   => 'xinetd',
  ensure => absent,
}

service { '(2.1.12) - Disable chargen-dgram':
  name   => 'chargen-dgram',
  ensure => stopped,
  enable => false,
}

service { '(2.1.13) - Disable chargen-stream':
  name   => 'chargen-stream',
  ensure => stopped,
  enable => false,
}

service { '(2.1.14) - Disable daytime-dgram':
  name   => 'daytime-dgram',
  ensure => stopped,
  enable => false,
}

service { '(2.1.15) - Disable daytime-stream':
  name   => 'daytime-stream',
  ensure => stopped,
  enable => false,
}

service { '(2.1.16) - Disable echo-dgram':
  name   => 'echo-dgram',
  ensure => stopped,
  enable => false,
}

service { '(2.1.17) - Disable echo-stream':
  name   => 'echo-stream',
  ensure => stopped,
  enable => false,
}

service { '(2.1.18) - Disable tcpmux-server':
  name   => 'tcpmux-server',
  ensure => stopped,
  enable => false,
}



} #EOF
