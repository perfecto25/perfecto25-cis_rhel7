class cis_rhel7::rule::rule_1_1_1 {
# includes Rules:
# 1.1.1, 1.1.2, 1.1.3, 1.1.4

  file { '(1.1.1) "/tmp" properties':
    ensure => 'directory',
    path   => '/tmp',
    mode   => '1777',
    owner  => 'root',
    group  => 'root',
  }

  mount { '(1.1.1 - 1.1.4) /tmp is mounted':
    name    => '/tmp',
    ensure  => 'mounted',
    device  => '/tmp',
    fstype  => 'tmpfs',
    options => 'nodev,nosuid,noexec'
  }
  

} #EOF
