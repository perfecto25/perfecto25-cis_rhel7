class cis_rhel7::rule::rule_3_7 {

# includes Rules:
# 3.7 - Remove LDAP (Not Scored)

package { '(3.7) - remove LDAP server':
  name   => 'openldap-servers',
  ensure => absent,
}

package { '(3.7) - remove LDAP clients':
  name   => 'openldap-clients',
  ensure => absent,
}



} #EOF
