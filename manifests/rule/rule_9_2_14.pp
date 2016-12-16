class cis_rhel7::rule::rule_9_2_14 {

# includes Rules:
# 9.2.14 - Check for Duplicate UIDs (Scored)

$uid = $::cis_benchmarks['dup_uid']

if $uid != ''
{
    notify { "(9.2.14) - Duplicate UIDs found: ${uid}": }
}


} #EOF
