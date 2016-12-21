class cis_rhel7::rule::rule_9_2_16 {

# includes Rules:
# 9.2.16 - Check That Reserved UIDs Are Assigned to System Accounts

$res_uid = $::cis_benchmarks['res_uid']

if $res_uid != ''
{
    notify { "(9.2.16) - Reserved UIDs found on user accounts: ${res_uid}": }
}


} #EOF
