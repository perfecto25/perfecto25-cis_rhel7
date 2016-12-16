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
Augeas    { noop => true }
Pam       { noop => true }

# lint:ignore:2sp_soft_tabs lint:ignore:140chars The formatting makes the manifest easier to read
$cis_scripts_dir = '/tmp/cis_scripts'

$cis_scripts = [ 'cis_ww_files.sh',
                 'cis_ww_dirs.sh',
                 'cis_yumupdates.sh',
                 'cis_unconfined_daemons.sh',
                 'cis_redhat_network.sh',
                 'cis_redhat_gpg.sh',
                 'cis_pkg_integrity.sh',
                 'cis_disable_sys_acct.sh',
                 'cis_unowned_files.sh',
                 'cis_ungrouped_files.sh',
                 'cis_suid_exec.sh',
                 'cis_sgid_exec.sh',
                 'cis_password_fields.sh',
                 'cis_legacy_entry.sh',
                 'cis_uid_0.sh',
                 'cis_dup_uid.sh',
                 'cis_dup_gid.sh',
                 'cis_res_uid.sh',
                 'cis_dup_name.sh',
                 'cis_dup_group.sh',
                 'cis_netrc.sh',
                 'cis_userhome.sh',
                 'cis_validhome.sh',
                 'cis_checkgroup.sh'
               ]


# Rule 2.1.1
$packages = [   'telnet-server %Telnet server removed %2.1.1',
                'telnet %Telnet client removed %2.1.2',
                'rsh-server %RSH server removed %2.1.3',
                'rsh %RSH client removed %2.1.4',
                'ypbind %NIS client removed %2.1.5',
                'ypserv %NIS server removed %2.1.6',
                'tftp %TFTP client removed %2.1.7',
                'tftp-server %TFTP server removed %2.1.8',
                'talk %Talk client removed %2.1.9',
                'talk-server %Talk server removed %2.1.10',
                'xinetd %Xinetd removed %2.1.11'
]

$services = [   'chargen-dgram %Disable chargen-dgram %2.1.12',
                'chargen-stream %Disable chargen-stream %2.1.13',
                'daytime-dgram %Disable daytime-dgram %2.1.14',
                'daytime-stream %Disable daytime-stream %2.1.15',
                'echo-dgram %Disable echo-dgram %2.1.16',
                'echo-stream %Disable echo-stream %2.1.17',
                'tcpmux-server %Disable tcpmux-server %2.1.18'
]


# Rule 3.8
$nfs_services = ['nfslock','rpcgssd','rpcbind','rpcidmapd','rpcsvcgssd']

# Rule 3.9
$servers = ['3.9,bind','3.10,vsftpd','3.11,httpd','3.12,dovecot','3.13,samba','3.14,squid','3.15,net-snmp']

# Rule 5.1
$contents = [ 'auth,user.* /var/log/messages',
              'kern.* /var/log/kern.log',
              'daemon.* /var/log/daemon.log',
              'syslog.* /var/log/syslog',
              'lpr,news,uucp,local0,local1,local2,local3,local4,local5,local6.* /var/log/unused.log'
            ]


# Rule 5.2.4
$audit_rules = [ '-a always,exit -F arch=b64 -S adjtimex -S settimeofday -k time-change %5.2.4',
                 '-a always,exit -F arch=b32 -S adjtimex -S settimeofday -S stime -k time-change %5.2.4',
                 '-a always,exit -F arch=b64 -S clock_settime -k time-change %5.2.4',
                 '-a always,exit -F arch=b32 -S clock_settime -k time-change %5.2.4',
                 '-w /etc/localtime -p wa -k time-change %5.2.4',
                 '-w /etc/group -p wa -k identity %5.2.5',
                 '-w /etc/passwd -p wa -k identity %5.2.5',
                 '-w /etc/gshadow -p wa -k identity %5.2.5',
                 '-a always,exit -F arch=b64 -S sethostname -S setdomainname -k system-locale %5.2.6',
                 '-a always,exit -F arch=b32 -S sethostname -S setdomainname -k system-locale %5.2.6',
                 '-w /etc/issue -p wa -k system-locale %5.2.6',
                 '-w /etc/issue.net -p wa -k system-locale %5.2.6',
                 '-w /etc/hosts -p wa -k system-locale %5.2.6',
                 '-w /etc/sysconfig/network -p wa -k system-locale %5.2.6',
                 '-w /etc/selinux/ -p wa -k MAC-policy %5.2.7',
                 '-w /var/log/faillog -p wa -k logins %5.2.8',
                 '-w /var/log/lastlog -p wa -k logins %5.2.8',
                 '-w /var/log/tallylog -p wa -k logins %5.2.8',
                 '-w /var/run/utmp -p wa -k session %5.2.9',
                 '-w /var/log/wtmp -p wa -k session %5.2.9',
                 '-w /var/log/btmp -p wa -k session %5.2.9',
                 '-a always,exit -F arch=b64 -S chmod -S fchmod -S fchmodat -F auid>=500 -F auid!=4294967295 -k perm_mod %5.2.10',
                 '-a always,exit -F arch=b32 -S chmod -S fchmod -S fchmodat -F auid>=500 -F auid!=4294967295 -k perm_mod %5.2.10',
                 '-a always,exit -F arch=b64 -S chown -S fchown -S fchownat -S lchown -F auid>=500 -F auid!=4294967295 -k perm_mod %5.2.10',
                 '-a always,exit -F arch=b32 -S chown -S fchown -S fchownat -S lchown -F auid>=500 -F auid!=4294967295 -k perm_mod %5.2.10',
                 '-a always,exit -F arch=b64 -S setxattr -S lsetxattr -S fsetxattr -S removexattr -S lremovexattr -S fremovexattr -F auid>=500 -F auid!=4294967295 -k perm_mod %5.2.10',
                 '-a always,exit -F arch=b32 -S setxattr -S lsetxattr -S fsetxattr -S removexattr -S lremovexattr -S fremovexattr -F auid>=500 -F auid!=4294967295 -k perm_mod %5.2.10',
                 '-a always,exit -F arch=b64 -S creat -S open -S openat -S truncate -F exit=-EACCES -F auid>=500 -F auid!=4294967295 -k access %5.2.11',
                 '-a always,exit -F arch=b32 -S creat -S open -S openat -S truncate -F exit=-EACCES -F auid>=500 -F auid!=4294967295 -k access %5.2.11',
                 '-a always,exit -F arch=b64 -S creat -S open -S openat -S truncate -F exit=-EPERM -F auid>=500 -F auid!=4294967295 -k access %5.2.11',
                 '-a always,exit -F arch=b32 -S creat -S open -S openat -S truncate -F exit=-EPERM -F auid>=500 -F auid!=4294967295 -k access %5.2.11',
                 '-a always,exit -F arch=b64 -S mount -F auid>=500 -F auid!=4294967295 -k mounts %5.2.13',
                 '-a always,exit -F arch=b32 -S mount -F auid>=500 -F auid!=4294967295 -k mounts %5.2.13',
                 '-a always,exit -F arch=b64 -S unlink -S unlinkat -S rename -S renameat -F auid>=500 -F auid!=4294967295 -k delete %5.2.14',
                 '-a always,exit -F arch=b32 -S unlink -S unlinkat -S rename -S renameat -F auid>=500 -F auid!=4294967295 -k delete %5.2.14',
                 '-w /etc/sudoers -p wa -k scope %5.2.15',
                 '-w /var/log/sudo.log -p wa -k actions %5.2.16',
                 '-w /sbin/insmod -p x -k modules %5.2.17',
                 '-w /sbin/rmmod -p x -k modules %5.2.17',
                 '-w /sbin/modprobe -p x -k modules %5.2.17',
                 '-a always,exit -F arch=b64 -S init_module -S delete_module -k modules %5.2.17',
                 '-e 2 %5.2.18'
                ]

# Rule 5.3
$logs = [ '/var/log/messages','/var/log/secure','/var/log/maillog','/var/log/spooler','/var/log/boot.log','/var/log/cron' ]

# Rule 6.1.1
$cron_files = [ '/etc/anacrontab %6.1.3',
                '/etc/crontab %6.1.4',
                '/etc/cron.hourly %6.1.5',
                '/etc/cron.daily %6.1.6',
                '/etc/cron.weekly %6.1.7',
                '/etc/cron.monthly %6.1.8',
                '/etc/at.allow %6.1.10',
                '/etc/cron.allow %6.1.11'
                 ]

# Rule 6.2.1
$sshd_settings = [ 'Protocol 2 %6.2.1',
                   'LogLevel Info %6.2.2',
                   'X11Forwarding no %6.2.4',
                   'MaxAuthTries 4 %6.2.5',
                   'IgnoreRhosts yes %6.2.6',
                   'HostbasedAuthentication no %6.2.7',
                   'PermitRootLogin no %6.2.8',
                   'PermitEmptyPasswords no %6.2.9',
                   'PermitUserEnvironment no %6.2.10',
                   'Ciphers aes128-ctr,aes192-ctr,aes256-ctr %6.2.11',
                   'ClientAliveInterval 300 %6.2.12',
                   'ClientAliveCountMax 0 %6.2.12'
                 ]

$banners = [ '/etc/motd','/etc/issue','/etc/issue.net' ]

# lint:endignore



} #EOF
