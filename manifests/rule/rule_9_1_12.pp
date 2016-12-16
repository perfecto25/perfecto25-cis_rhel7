class cis_rhel7::rule::rule_9_1_12 {

# includes Rules:
# 9.1.12 - Find Un-owned Files and Directories (Scored)

$files = $::cis_benchmarks['ungrouped_files']

if $files != ''
{
    notify { "(9.1.12) - Ungrouped files and directories exist: ${files}": }
}


} #EOF
