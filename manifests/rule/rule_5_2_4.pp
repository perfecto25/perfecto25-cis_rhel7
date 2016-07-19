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

$file = '/etc/audit/audit.rules'

each ($rules) |$rule_item| {
  
  $rule = split($rule_item, ',')

notify { "rule0= ${rule[0]} ..... rule1 = ${rule[1]}": }

  file_line { "(${rule[1]}) - ${file}: ${rule[0]}":
    ensure    => present,
    path      => $file,
    line      => $rule[0],
    multiple  => false,
  }

}






} #EOF
