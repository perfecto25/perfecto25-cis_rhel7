class cis_rhel7::rule::rule_1_4_1 {

# includes Rules:
# 1.4.1 - Enable SELinux in /etc/grub.conf (Scored)
# 1.4.2 - Set the SELinux State (Scored)
# 1.4.3 - Set the SELinux Policy (Scored)

file { '/etc/grub.conf' :
  ensure => file,
  mode   => '0600',
  owner  => 'root',
  group  => 'root',
}


file_line { '(1.4.1) /etc/grub.conf - selinux=0':
  ensure => absent,
  path   => '/etc/grub.conf',
  line   => 'selinux=0',
}

file_line { '(1.4.1) /etc/grub.conf - enforcing=0':
  ensure => absent,
  path   => '/etc/grub.conf',
  line   => 'enforcing=0',
}


$file = '/etc/selinux/config'

file { $file :
  ensure => file,
  mode   => '0644',
  owner  => 'root',
  group  => 'root',
}

file_line { "(1.4.2) ${file} - SELINUX=enforcing":
  ensure => present,
  path   => $file,
  line   => 'SELINUX=enforcing',
}

file_line { "(1.4.3) ${file} - SELINUXTYPE=targeted":
  ensure => present,
  path   => $file,
  line   => 'SELINUXTYPE=targeted',
}


} #EOF
