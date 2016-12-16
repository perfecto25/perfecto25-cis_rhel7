class cis_rhel7::rule::rule_6_3_3 {

#includes Rules:
# 6.3.3 - Set Lockout for Failed Password Attempts (Not Scored)


## Password Auth
pam { '(6.3.3) - password-auth: pam_env.so (required)':
  ensure  => present,
  service => 'password-auth',
  type    => 'auth',
  control => 'required',
  module  => 'pam_env.so',
  #arguments	=> '',
}

pam { '(6.3.3) - password-auth: pam_faillock.so (required)':
  ensure    => present,
  service   => 'password-auth',
  type      => 'auth',
  control   => 'required',
  module    => 'pam_faillock.so',
  arguments => ['preauth','audit','silent','deny=5','unlock_time=900'],
}

pam { "(6.3.3) - password-auth: pam_unix.so (['success=1','default=bad'])":
  ensure  => present,
  service => 'password-auth',
  type    => 'auth',
  control => "['success=1','default=bad']",
  module  => 'pam_unix.so',
  #arguments	=> ,
}

pam { '(6.3.3) - password-auth: pam_faillock.so (default=die)':
  ensure    => present,
  service   => 'password-auth',
  type      => 'auth',
  control   => '[default=die]',
  module    => 'pam_faillock.so',
  arguments => ['authfail','audit','deny=5','unlock_time=900'],
}

pam { '(6.3.3) - password-auth: pam_faillock.so (sufficient)':
  ensure    => present,
  service   => 'password-auth',
  type      => 'auth',
  control   => 'sufficient',
  module    => 'pam_faillock.so',
  arguments => ['authsucc','audit','deny=5','unlock_time=900'],
}

pam { '(6.3.3) - password-auth: pam_deny.so (required)':
  ensure  => present,
  service => 'password-auth',
  type    => 'auth',
  control => 'required',
  module  => 'pam_deny.so',
  #arguments	=> '',
}




## System AUTH

pam { '(6.3.3) - system-auth: pam_env.so (required)':
  ensure  => present,
  service => 'system-auth',
  type    => 'auth',
  control => 'required',
  module  => 'pam_env.so',
  #arguments	=> '',
}

pam { '(6.3.3) - system-auth: pam_faillock.so (required)':
  ensure    => present,
  service   => 'system-auth',
  type      => 'auth',
  control   => 'required',
  module    => 'pam_faillock.so',
  arguments => ['preauth','audit','silent','deny=5','unlock_time=900'],
}

pam { "(6.3.3) - system-auth: pam_unix.so (['success=1','default=bad'])":
  ensure  => present,
  service => 'system-auth',
  type    => 'auth',
  control => "['success=1','default=bad']",
  module  => 'pam_unix.so',
  #arguments	=> ,
}

pam { '(6.3.3) - system-auth: pam_faillock.so (default=die)':
  ensure    => present,
  service   => 'system-auth',
  type      => 'auth',
  control   => '[default=die]',
  module    => 'pam_faillock.so',
  arguments => ['authfail','audit','deny=5','unlock_time=900'],
}

pam { '(6.3.3) - system-auth: pam_faillock.so (sufficient)':
  ensure    => present,
  service   => 'system-auth',
  type      => 'auth',
  control   => 'sufficient',
  module    => 'pam_faillock.so',
  arguments => ['authsucc','audit','deny=5','unlock_time=900'],
}

pam { '(6.3.3) - system-auth: pam_deny.so (required)':
  ensure  => present,
  service => 'system-auth',
  type    => 'auth',
  control => 'required',
  module  => 'pam_deny.so',
  #arguments	=> '',
}

} #EOF
