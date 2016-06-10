class cis_rhel7::rule::r111 {

  $file = '/etc/fstab'

   exec { "CHECK /tmp partition in ${file}":
    command => 'echo /tmp >> /etc/fstab',
    unless  => 'grep ^/tmp /etc/fstab',
  }

   exec { "CHECK /tmp nodev in ${file}":
     command => '',
     unless => "grep ^/tmp ${file} | grep nodev",
   }

  file_line { 'CHECK "/tmp" partition in /etc/fstab':
    path => $file,
    line => "/tmp /tmp none rw,noexec,nosuid,nodev,bind 0 0",
    match => "^/tmp.*noexec*$",
  }

  file { 'CHECK "/tmp" properties':
    path   => '/tmp',
    ensure => 'directory',
    mode   => '1777',
    owner  => 'root',
    group  => 'root',
  }

  mount { 'CHECK /tmp is mounted':
    name   => '/tmp',
    ensure => 'mounted',
    device => '/tmp',
    fstype => 'none',
    options => 'nodev,nosuid,noexec'
  }


#mount { '/tmp':
#  ensure  => present,
#  name    => "/tmp",
#  device  => "/tmp",
#  options => "nodev,noexec",
#  fstype  => "xfs",
#}



}
