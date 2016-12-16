class cis_rhel7::rule::rule_3_8 (

  $services = $::cis_rhel7::params::nfs_services

) inherits cis_rhel7::params {

# includes Rules:
# 3.8 - Disable NFS and RPC (Not Scored)

each($services) |$serv| {
  service { "(3.8) - ${serv} disabled":
    name   => $serv,
    ensure => stopped,
    enable => false,
  }
}

} #EOF
