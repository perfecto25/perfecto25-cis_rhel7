class cis_rhel7::rule::rule_5_2_4 (

  $rules = $::cis_rhel7::params::audit_rules

) inherits cis_rhel7::params {

# includes Rules:
# 5.2.4 - Record Events That Modify Date and Time Information (Scored)
# 5.2.5 - Record Events That Modify User/Group Information (Scored)
# 5.2.6 - Record Events That Modify the System's Network Environment (Scored)
# 5.2.7 - Record Events That Modify the System's Mandatory Access Controls (Scored)
# 5.2.8 - Collect Login and Logout Events (Scored)
# 5.2.9 - Collect Session Initiation Information (Scored)
# 5.2.10 - Collect Discretionary Access Control Permission Modification Events (Scored)
# 5.2.11 - Collect Unsuccessful Unauthorized Access Attempts to Files (Scored)
# 5.2.13 - Collect Successful File System Mounts (Scored)
# 5.2.14 - Collect File Deletion Events by User (Scored)
# 5.2.15 - Collect Changes to System Administration Scope (sudoers) (Scored)
# 5.2.16 - Collect System Administrator Actions (sudolog) (Scored)
# 5.2.17 - Collect Kernel Module Loading and Unloading (Scored)
# 5.2.18 - Make the Audit Configuration Immutable (Scored)

$file = '/etc/audit/audit.rules'

each ($rules) |$rule_item| {

  $rule = split($rule_item, '%')

  file_line { "(${rule[1]}) - ${file}: ${rule[0]}":
    ensure   => present,
    path     => $file,
    line     => $rule[0],
    multiple => false,
  }
}

} #EOF
