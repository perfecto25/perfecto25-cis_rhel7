class cis_rhel7::rule::rule_1_1_17 {

#includes Rules:
# 1.1.17 - Set Sticky Bit on All World-Writable Directories (Scored)

file { '/tmp/cis_sticky_bit.sh':
  ensure => file,
  source => "puppet:///modules/cis_rhel7/cis_sticky_bit.sh",
  mode   => '0755',
  noop   => false,
}

$stickybit = $::world_writable_dirs

if ($stickybit != "") {
    notify { "(1.1.17) sticky bit not set on: ${stickybit}": }
}


} #EOF
