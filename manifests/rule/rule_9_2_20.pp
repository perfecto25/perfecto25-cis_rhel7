class cis_rhel7::rule::rule_9_2_20 {

# includes Rules:
# 9.2.20 - Check for Presence of User .forward Files (Scored)

$forward = $::cis_benchmarks['forward']

if $forward != ''
{
    notify { "(9.2.20) - .forward files found in: ${forward}": }
}


} #EOF
