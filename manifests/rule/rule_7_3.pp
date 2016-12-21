class cis_rhel7::rule::rule_7_3 {

#includes Rules:
# 7.3 - Set Default Group for root Account (Scored)

user { "(7.3) - Set default group for 'root' account":
  name   => 'root',
  ensure => present,
  gid    => '0',
  uid    => '0',
  groups => 'root',
}


} #EOF
