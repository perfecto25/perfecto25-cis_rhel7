class cis_rhel7::rule::rule_1_3_1 {

# includes Rules:
# 1.3.1 - Install AIDE (Scored)


package { '(1.3.1) - AIDE is installed':
    name   => 'aide',
    ensure => present,
}

exec { '(1.3.1) - Initialize AIDE':
  command => "aide --init -B 'database_out=file:/var/lib/aide/aide.db.gz'",
  creates => '/var/lib/aide/aide.db.gz',
}


} #EOF
