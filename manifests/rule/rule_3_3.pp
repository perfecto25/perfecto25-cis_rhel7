class cis_rhel7::rule::rule_3_3 {

# includes Rules:
# 3.3 - Disable Avahi Server (Scored)
# 3.4 - Disable Print Server - CUPS (Not Scored)
# 3.5 - Remove DHCP Server (Scored)

service { '(3.3) - disable Avahi server':
  name   => 'avahi-daemon',
  ensure => stopped,
  enable => false,
}

service { '(3.4) - disable Print server CUPS':
  name   => 'cups',
  ensure => stopped,
  enable => false,
}

package { '(3.5) - remove DHCP server':
  name   => 'dhcp',
  ensure => absent,
}



} #EOF
