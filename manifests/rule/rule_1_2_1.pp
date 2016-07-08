class cis_rhel7::rule::rule_1_2_1 {

#includes Rules:
# 1.2.1 - Configure Connection to the RHN RPM Repositories (Not Scored)


## APPLIES TO REDHAT only

if $::operatingsystem == 'RedHat' {
  
  if $::redhat_network == "registered" {
    notify { "(1.2.1) - RedHat Repository is not configured": }
  }
}




} #EOF
