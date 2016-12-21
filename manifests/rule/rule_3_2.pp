class cis_rhel7::rule::rule_3_2 {

# includes Rules:
# 3.2 - Remove the X Window System (Scored)


package { '(3.2) - remove X Window system':
  name   => 'xorg-x11-server-common',
  ensure => absent,
}

file { '(3.2) - default.target':
  name   => '/usr/lib/systemd/system/default.target',
  ensure => link,
  target => 'multi-user.target',
}


} #EOF
