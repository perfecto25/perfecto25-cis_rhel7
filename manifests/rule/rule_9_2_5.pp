class cis_rhel7::rule::rule_9_2_5 {

# includes Rules:
# 9.2.5 - Verify No Legacy "+" Entries Exist in /etc/passwd File (Scored)


$uid = $::cis_benchmarks['uid']

if $uid != ''
{
    notify { "(9.2.5) - User accounts with UID=0 found: ${uid}": }
}


} #EOF
