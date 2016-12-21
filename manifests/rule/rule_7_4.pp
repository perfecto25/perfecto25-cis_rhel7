class cis_rhel7::rule::rule_7_4 {

#includes Rules:
# 7.4 - Set Default umask for Users (Scored)

$file = '/etc/bashrc'

file { "(7.4) - ${file} exists":
  ensure => file,
  path   => $file,
  owner  => 'root',
  group  => 'root',
  mode   => '0644',
}

file_line { "(7.4) - Set umask 077 on ${file}":
  ensure  => present,
  path    => $file,
  line    => 'umask 077',
  match   => '^umask.*077',
  replace => false,
}

} #EOF
