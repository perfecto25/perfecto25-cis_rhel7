class cis_rhel7::rule::rule_1_2_4 {

# includes Rules:
# 1.2.4 - Disable the rhnsd Daemon (Not Scored)

if $::operatingsystem == 'RedHat'
{

  service { '(1.2.4) rhnsd service is disabled':
    name   => 'rhnsd',
    ensure => stopped,
    enable => false,
  }
}
else
{
    notify { '(1.2.4) - This operating system is not RedHat, skipping rule..': }
}





} #EOF
