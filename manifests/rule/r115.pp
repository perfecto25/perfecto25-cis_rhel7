class cis_rhel7::rule::r115 {

# includes Rules:
# 1.1.5, 1.1.6, 1.1.7

  file_line { '(1.1.5) CHECK /var is mounted':
    path => '/etc/fstab',
    line => '/dev/sda1  /var  tmpfs nodev 0 0',
    match => '*/var *',
  }


  mount { '(1.1.6) CHECK /var/tmp is bound to /tmp':
    name  => '/var/tmp',
    ensure => 'mounted',
    device => '/tmp',
    fstype  => 'none',
    options => 'bind',
  }
  
  file_line { '(1.1.7) CHECK /var/log is mounted':
    path => '/etc/fstab',
    line => '/dev/sda1  /var/log  xfs nodev 0 0',
    match => '*/var/log*nodev',
  }


}
