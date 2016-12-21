class cis_rhel7::rule::rule_1_2_6 {

# includes Rules:
# 1.2.6 - Verify Package Integrity Using RPM (Not Scored)

$pkg = $::cis_benchmarks['pkg_integrity']

if $pkg != ''
{
  notify { '(1.2.6) - Installed packages did not pass integrity check': }
}




} #EOF
