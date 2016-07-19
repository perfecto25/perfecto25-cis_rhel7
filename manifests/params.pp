class cis_rhel7::params {
  
# Resource Defaults to NOOP 
File      { noop => true }
File_line { noop => true }
User      { noop => true }
Exec      { noop => true, path => '/usr/bin:/usr/sbin:/bin' }
Mount     { noop => true } 
Service   { noop => true }
Package   { noop => true }
Cron      { noop => true }

$scripts_dir = '/tmp/cis_scripts'

$audit_rules = [ '-a always,exit -F arch=b64 -S adjtimex -S settimeofday -k time-change % 5.2.4',
                 '-a always,exit -F arch=b32 -S adjtimex -S settimeofday -S stime -k time-change % 5.2.4',
                 '-a always,exit -F arch=b64 -S clock_settime -k time-change % 5.2.4',
                 '-a always,exit -F arch=b32 -S clock_settime -k time-change % 5.2.4',
                 '-w /etc/localtime -p wa -k time-change % 5.2.4',
                 '-w /etc/group -p wa -k identity % 5.2.5',
                 '-w /etc/passwd -p wa -k identity % 5.2.5',
                 '-w /etc/gshadow -p wa -k identity % 5.2.5',
                 '-a always,exit -F arch=b64 -S sethostname -S setdomainname -k system-locale % 5.2.6',
                 '-a always,exit -F arch=b32 -S sethostname -S setdomainname -k system-locale % 5.2.6',
                 '-w /etc/issue -p wa -k system-locale % 5.2.6',
                 '-w /etc/issue.net -p wa -k system-locale % 5.2.6',
                 '-w /etc/hosts -p wa -k system-locale % 5.2.6',
                 '-w /etc/sysconfig/network -p wa -k system-locale % 5.2.6',
                 '-w /etc/selinux/ -p wa -k MAC-policy % 5.2.7',
                 '-w /var/log/faillog -p wa -k logins % 5.2.8',
                 '-w /var/log/lastlog -p wa -k logins % 5.2.8',
                 '-w /var/log/tallylog -p wa -k logins % 5.2.8',
                 '-w /var/run/utmp -p wa -k session % 5.2.9',
                 '-w /var/log/wtmp -p wa -k session % 5.2.9',
                 '-w /var/log/btmp -p wa -k session % 5.2.9',
                 '-a always,exit -F arch=b64 -S chmod -S fchmod -S fchmodat -F auid>=500 -F auid!=4294967295 -k perm_mod, 5.2.10',
                 '-a always,exit -F arch=b32 -S chmod -S fchmod -S fchmodat -F auid>=500 -F auid!=4294967295 -k perm_mod, 5.2.10',
                 '-a always,exit -F arch=b64 -S chown -S fchown -S fchownat -S lchown -F auid>=500 -F auid!=4294967295 -k perm_mod, 5.2.10',
                 '-a always,exit -F arch=b32 -S chown -S fchown -S fchownat -S lchown -F auid>=500 -F auid!=4294967295 -k perm_mod, 5.2.10',
                 '-a always,exit -F arch=b64 -S setxattr -S lsetxattr -S fsetxattr -S removexattr -S lremovexattr -S fremovexattr -F auid>=500 -F auid!=4294967295 -k perm_mod, 5.2.10',
                 '-a always,exit -F arch=b32 -S setxattr -S lsetxattr -S fsetxattr -S removexattr -S lremovexattr -S fremovexattr -F auid>=500 -F auid!=4294967295 -k perm_mod, 5.2.10',
                 '-a always,exit -F arch=b64 -S creat -S open -S openat -S truncate -F exit=-EACCES -F auid>=500 -F auid!=4294967295 -k access, 5.2.11',
                 '-a always,exit -F arch=b32 -S creat -S open -S openat -S truncate -F exit=-EACCES -F auid>=500 -F auid!=4294967295 -k access, 5.2.11',
                 '-a always,exit -F arch=b64 -S creat -S open -S openat -S truncate -F exit=-EPERM -F auid>=500 -F auid!=4294967295 -k access, 5.2.11',
                 '-a always,exit -F arch=b32 -S creat -S open -S openat -S truncate -F exit=-EPERM -F auid>=500 -F auid!=4294967295 -k access, 5.2.11'
                ]






} #EOF
