class cis_rhel7::rule::rule_5_2_3 {

# includes Rules:
# 5.2.3 - Enable Auditing for Processes That Start Prior to auditd (Scored)


$file = '/etc/default/grub'

file { "(5.2.3) - ${file} exists":
  name   => $file,
  ensure => file,
  mode   => '0644',
  owner  => 'root',
  group  => 'root',
}


file_line { "(5.2.3) - ${file}: audit=1":
  ensure => present,
  path   => $file,
  line   => 'audit=1',
  match  => '^GRUB_CMDLINE_LINUX=".*audit=1.*$',

}


} #EOF
