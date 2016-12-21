class cis_rhel7::rule::rule_9_1_13 {

# includes Rules:
# 9.1.13 - Find SUID System Executables (Not Scored)

$files = $::cis_benchmarks['suid_exec']

if $files != ''
{
    notify { "(9.1.13) - SUID system executables exist: ${files}": }
}


} #EOF
