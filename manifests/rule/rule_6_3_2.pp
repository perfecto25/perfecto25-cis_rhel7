class cis_rhel7::rule::rule_6_3_2 {

#includes Rules:
# 6.3.2 - Set Password Creation Requirement Parameters Using pam_cracklib (Scored)


file { '(6.3.2) - /etc/pam.d/system-auth is a symlink':
  ensure => link,
  path   => '/etc/pam.d/system-auth',
  target => 'system-auth-ac',
}

file { '(6.3.2) - /etc/pam.d/system-auth-ac permissions':
  ensure => file,
  path   => '/etc/pam.d/system-auth-ac',
  mode   => '0644',
  owner  => 'root',
  group  => 'root',
}


pam { '(6.3.2) - Password creation requirements set':
  ensure    => present,
  service   => 'system-auth',
  type      => 'password',
  control   => 'required',
  module    => 'pam_cracklib.so',
  arguments => ['try_first_pass','retry=3','minlen=14','dcredit=-1','ucredit=-1','ocredit=-1','lcredit=-1']
}


} #EOF
