class cis_rhel7::rule::rule_1_3_2 {

# includes Rules:
# 1.3.2 - Implement Periodic Execution of File Integrity (Scored)


cron { '(1.3.2) - AIDE is scheduled in cron':
    name    => 'Run AIDE',
    command => '/usr/sbin/aide --check',
    user    => 'root',
    minute  => 0,
    hour    => 5,
}



} #EOF
