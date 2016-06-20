class cis_rhel7::rule::rule_1_1_17 {

warning('apache::proxy is deprecated; please use apache::mod::proxy')

#includes Rules:
# 1.1.17

file { '/tmp/stickybit.sh':
  ensure => present,
  source => "puppet:///modules/cis_rhel7/stickybit.sh",
  mode   => '0755',
  noop   => false,
}

#  exec { '(1.1.17) sticky bit not set on world writable dirs':
    # command => "df --local -P | awk {'if (NR!=1) print \$6'} | xargs -I '{}' find '{}' -xdev -type d \\( -perm -0002 -a ! -perm -1000 \\) 2>/dev/null | xargs chmod a+t",
    #    command  => "echo exit 1",
    # noop => true,
    #command => "df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -type d \( -perm -0002 -a ! -perm -1000 \) 2>/dev/null | xargs chmod a+t",
    # onlyif => "test -z $(df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -type d \( -perm -0002 -a ! -perm -1000 \) 2>/dev/null )",
    # }

$stickybit = $::sticky_bit

#if $stickybit = 'fail' {
#  warning('fail')
#}



}
