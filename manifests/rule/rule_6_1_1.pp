class cis_rhel7::rule::rule_6_1_1 (

  $files = $::cis_rhel7::params::cron_files

) inherits cis_rhel7::params {

# includes Rules:
# 6.1.1 - Enable anacron Daemon (Scored)
# 6.1.2 - Enable crond Daemon (Scored)
# 6.1.3 - Set User/Group Owner and Permission on /etc/anacrontab (Scored)
# 6.1.4 - Set User/Group Owner and Permission on /etc/crontab (Scored)
# 6.1.5 - Set User/Group Owner and Permission on /etc/cron.hourly (Scored)
# 6.1.6 - Set User/Group Owner and Permission on /etc/cron.daily (Scored)
# 6.1.7 - Set User/Group Owner and Permission on /etc/cron.weekly (Scored)
# 6.1.8 - Set User/Group Owner and Permission on /etc/cron.monthly (Scored)
# 6.1.9 - Set User/Group Owner and Permission on /etc/cron.d (Scored)
# 6.1.10 - Restrict at Daemon (Scored)
# 6.1.11 - Restrict at/cron to Authorized Users (Scored)

package { '(6.1.1) - Anacron installed':
    name   => 'cronie-anacron',
    ensure => present,
}

service { '(6.1.2) - crond service is enabled':
  name     => 'crond',
    ensure => running,
    enable => true,
  }

each($files) |$item| {

  $file = split($item,'%')

  file { "(${file[1]}) - ${file[0]} permissions":
    ensure  => file,
    path    =>  $file[0],
      mode  => '0600',
      owner => 'root',
      group => 'root',
  }
}


file { '(6.1.9) - /etc/cron.d permissions':
  ensure  => directory,
  path    => '/etc/cron.d',
    mode  => '0700',
    owner => 'root',
    group => 'root',
}


} #EOF
