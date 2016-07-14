class cis_rhel7::rule::rule_3_9 {

# includes Rules:
# 3.9 - 

$packages = ['3.9,bind','3.10,vsftpd','3.11,httpd','3.12,dovecot','3.13,samba','3.14,squid','3.15,net-snmp']

each($packages) |$package| {

  $pkg = split($package,',')
  notify { "${pkg[0]}" : }
  # package { "${pkg[0]} - Remove ${pkg[1]}":
  #  name    => $pkg[1],
  # ensure  => absent,
}


#$packages.each |String $pkg| {
#  $i = 9
#  package { "(3.9) - remove DNS server":
#name    => "bind",
  # ensure  => absent,
  #}

#package 


} #EOF
