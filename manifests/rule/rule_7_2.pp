class cis_rhel7::rule::rule_7_2 {

#includes Rules:
# 7.2 - Set Password Expiration Days (Scored)

$system_acct = $::cis_benchmarks['system_acct']

if ($system_acct != '') {
    notify { "(7.2) - System accounts not disabled: ${system_acct}": }
}


} #EOF
