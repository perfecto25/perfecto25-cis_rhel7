class cis_rhel7::rule::rule_1_6_1 {

# includes Rules:
# 1.6.1 - Restrict Core Dumps (Scored)
# 1.6.2 - Enable Randomized Virtual Memory Region Placement (Scored)

$file = '/etc/security/limits.conf'

file { "(1.6.1) - ${file} exists":
  path   => $file,
  ensure => file,
  owner  => 'root',
  group  => 'root',
  mode   => '0644',
}

file_line { "(1.6.1) - ${file}: disable core dumps":
  ensure => present,
  path   => $file,
  line   => '* hard core 0',
}

$file_sysctl = '/etc/sysctl.conf'

file { "(1.6.1) - ${file_sysctl} exists":
  path   => $file_sysctl,
  ensure => file,
  owner  => 'root',
  group  => 'root',
  mode   => '0644',
}

file_line { "(1.6.1) - ${file_sysctl}: disable core dumps":
  ensure => present,
  path   => $file_sysctl,
  line   => 'fs.suid_dumpable = 0',
}

file_line { "(1.6.2) - ${file_sysctl}: enable randomized virtual memory":
  ensure => present,
  path   => $file_sysctl,
  line   => 'kernel.randomize_va_space = 2',
  match  => '^kernel.randomize_va_space',
}




} #EOF
