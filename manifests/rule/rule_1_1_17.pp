class cis_rhel7::rule::rule_1_1_17 {

#includes Rules:
# 1.1.17 - Set Sticky Bit on All World-Writable Directories (Scored)

$ww_dirs = $::cis_benchmarks['ww_dirs']

if ($ww_dirs != '') {
    notify { "(1.1.17) sticky bit not set on: ${ww_dirs}": }
}


} #EOF
