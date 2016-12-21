class cis_rhel7::rule::rule_9_2_17 {

# includes Rules:
# 9.2.17 - Check for Duplicate User Names (Scored)

$dups = $::cis_benchmarks['dup_name']

if $dups != ''
{
    notify { "(9.2.17) - Duplicate user names found in /etc/passwd: ${dups}": }
}


} #EOF
