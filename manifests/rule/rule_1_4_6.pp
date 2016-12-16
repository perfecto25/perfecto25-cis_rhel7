class cis_rhel7::rule::rule_1_4_6 {

# includes Rules:
# 1.4.6 - Check for Unconfined Daemons (Scored)

$ud = $::cis_benchmarks['unconfined_daemons']

if $ud != ''
{
  notify { "(1.4.6) - Unconfined daemons present: ${ud}": }
}


} #EOF
