class cis_rhel7::rule::rule_6_2_1 (

  $settings = $::cis_rhel7::params::sshd_settings

) inherits cis_rhel7::params {

# includes Rules:
# 6.2.1 - Set SSH Protocol to 2 (Scored)
# 6.2.2 - Set LogLevel to INFO (Scored)
# 6.2.3 - Set Permissions on /etc/ssh/sshd_config (Scored)
# 6.2.4 - Disable SSH X11 Forwarding (Scored)
# 6.2.5 - Set SSH MaxAuthTries to 4 or Less (Scored)
# 6.2.6 - Set SSH IgnoreRhosts to Yes (Scored)
# 6.2.7 - Set SSH HostbasedAuthentication to No (Scored)
# 6.2.8 - Disable SSH Root Login (Scored)
# 6.2.9 - Set SSH PermitEmptyPasswords to No (Scored)
# 6.2.10 - Do Not Allow Users to Set Environment Options (Scored)
# 6.2.11 - Use Only Approved Cipher in Counter Mode (Scored)
# 6.2.12 - Set Idle Timeout Interval for User Login (Scored)
# 6.2.13 - Limit Access via SSH (Scored)
# 6.2.14 - Set SSH Banner (Scored)

$file = '/etc/ssh/sshd_config'

each ($settings) |$item| {

  $setting = split($item,'%')

  file_line { "(${setting[1]}) - ${file}: ${setting[0]}":
    ensure => present,
    path   => $file,
    line   => $setting[0],
  }
}

file { "(6.2.3) - ${file} permissions":
  name   => $file,
  ensure => file,
  mode   => '0600',
  owner  => 'root',
  group  => 'root',
}

file_line { "(6.2.13) - ${file}: AllowUsers":
  ensure   => present,
  path     => $file,
  line     => 'AllowUsers <user>',
  match    => '^AllowUsers.?$',
  multiple => false,
  replace  => true,
}

file_line { "(6.2.14) - ${file}: Banner":
  ensure   => present,
  path     => $file,
  line     => 'Banner /etc/issue.net',
  match    => '^Banner./etc/issue.?$',
  multiple => false,
  replace  => true,
}

} #EOF
