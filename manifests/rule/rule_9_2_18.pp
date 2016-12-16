class cis_rhel7::rule::rule_9_2_18 {

# includes Rules:
# 9.2.18 - Check for Duplicate Group Names (Scored)

$dups = $::cis_benchmarks['dup_group']

if $dups != ''
{
    notify { "(9.2.18) - Duplicate group names found in /etc/group: ${dups}": }
}


} #EOF
