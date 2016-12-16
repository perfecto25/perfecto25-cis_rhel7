class cis_rhel7::rule::rule_1_1_14 {

# includes Rules:
# 1.1.14, 1.1.15, 1.1.16

  file_line { '(1.1.14) /dev/shm - nodev':
    path  => '/etc/fstab',
    line  => '<volume>  /dev/shm  <fstype> nodev 0 0',
    match => '\*/dev/shm\*nodev',
  }

  file_line { '(1.1.15) /dev/shm - nosuid':
    path  => '/etc/fstab',
    line  => '<volume>  /dev/shm  <fstype> nosuid 0 0',
    match => '\*/dev/shm\*nosuid',
  }

  file_line { '(1.1.16) /dev/shm - noexec':
    path  => '/etc/fstab',
    line  => '<volume> /dev/shm <fstype>  noexec 0 0',
    match => '\*/dev/shm\*noexec',
  }



} #EOF
