class cis_rhel7::rule::rule_1_1_17 {

#includes Rules:
# 1.1.17 - Set Sticky Bit on All World-Writable Directories (Scored)

file { '/tmp/cis_sticky_bit.sh':
  ensure => file,
  source => "puppet:///modules/cis_rhel7/cis_sticky_bit.sh",
  mode   => '0755',
  noop   => false,
}

$stickybit = $::sticky_bit

notify { "(1.1.17) sticky bit not set on: ${stickybit}": }

#  exec { '(1.1.17) sticky bit not set on world writable dirs':
    # command => "df --local -P | awk {'if (NR!=1) print \$6'} | xargs -I '{}' find '{}' -xdev -type d \\( -perm -0002 -a ! -perm -1000 \\) 2>/dev/null | xargs chmod a+t",
    #    command  => "echo exit 1",
    # noop => true,
    #command => "df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -type d \( -perm -0002 -a ! -perm -1000 \) 2>/dev/null | xargs chmod a+t",
    # onlyif => "test -z $(df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -type d \( -perm -0002 -a ! -perm -1000 \) 2>/dev/null )",
    # }


#if $stickybit = 'fail' {
#  warning('fail')
#}

} #EOF
