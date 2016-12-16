class cis_rhel7::rule::rule_1_2_1 {

#includes Rules:
# 1.2.1 - Configure Connection to the RHN RPM Repositories (Not Scored)

## APPLIES TO REDHAT only

if $::operatingsystem == 'RedHat'
{

  $redhat_network = $::cis_benchmarks['redhat_network']

  if $redhat_network == 'not registered with RHN'
  {
    notify { '(1.2.1) - RedHat Repository is not configured': }
  }
}
else
{
  notify { '(1.2.1) - This operating system is not RedHat, skipping rule..': }
}



} #EOF
