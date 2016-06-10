class cis_rhel7::rule::r111 {
# includes Rules:
# 1.1.1, 1.1.2, 1.1.3, 1.1.4

  file { '(1.1.1) CHECK "/tmp" properties':
    path   => '/tmp',
    ensure => 'directory',
    mode   => '1777',
    owner  => 'root',
    group  => 'root',
  }

  mount { '(1.1.1 - 1.1.4) CHECK /tmp is mounted':
    name   => '/tmp',
    ensure => 'mounted',
    device => '/tmp',
    fstype => 'tmpfs',
    options => 'nodev,nosuid,noexec'
  }
  
}
