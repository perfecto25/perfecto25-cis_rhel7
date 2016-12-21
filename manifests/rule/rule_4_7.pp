class cis_rhel7::rule::rule_4_7 {

# includes Rules:
# 4.7 - Enable firewalld (Scored)

service { '(4.7) - firewalld enabled':
  name   => 'firewalld',
  ensure => running,
}


} #EOF
