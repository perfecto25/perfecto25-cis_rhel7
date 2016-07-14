class cis_rhel7::rule::rule_3_8 {

# includes Rules:
# 3.8 - Disable NFS and RPC (Not Scored)

$services = ['nfslock','rpcgssd','rpcbind','rpcidmapd','rpcsvcgssd']

each($services) |$serv| {
  service { "(3.8) - ${serv} disabled":
    name    => $serv,
    ensure  => stopped,
    enable  => false,
  }
}

} #EOF
