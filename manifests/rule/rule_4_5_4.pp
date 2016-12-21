class cis_rhel7::rule::rule_4_5_4 {

# includes Rules:
# 4.5.4 - Create /etc/hosts.deny (Not Scored)
# 4.5.5 - Verify Permissions on /etc/hosts.deny (Scored)


$file = '/etc/hosts.deny'

file_line { "(4.5.4) - ${file}: ALL:ALL":
  ensure   => present,
  path     => $file,
  line     => 'ALL:ALL',
  match    => '^ALL.?:.?ALL',
  multiple => false,
  replace  => false,
}

file { "(4.5.5) - ${file} has 644 permissions":
  ensure => file,
  path   => $file,
  owner  => 'root',
  group  => 'root',
  mode   => '0644',
}


} #EOF
