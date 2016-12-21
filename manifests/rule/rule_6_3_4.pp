class cis_rhel7::rule::rule_6_3_4 {

#includes Rules:
# 6.3.4 - Limit Password Reuse (Scored)

pam { '(6.3.4) - system-auth: pam_unix.so (sufficient)':
  ensure    => present,
  service   => 'system-auth',
  type      => 'password',
  control   => 'sufficient',
  module    => 'pam_unix.so',
  arguments => 'remember=5',
}


} #EOF
