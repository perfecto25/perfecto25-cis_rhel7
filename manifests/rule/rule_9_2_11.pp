class cis_rhel7::rule::rule_9_2_11 {

# includes Rules:
# 9.2.11 - Check Groups in /etc/passwd (Scored)

$group = $::cis_benchmarks['checkgroup']

if $group != ''
{
    notify { "(9.2.11) - Group IDs exist in /etc/passwd but not in /etc/group: ${group}": }
}


} #EOF
