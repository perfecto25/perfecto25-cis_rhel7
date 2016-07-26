class cis_rhel7::rule::rule_2_1_1 (

  $packages = $::cis_rhel7::params::packages

) inherits cis_rhel7::params {

# includes Rules:
# 2.1.1 - Remove telnet-server (Scored)
# 2.1.2 - Remove telnet Clients (Scored)
# 2.1.3 - Remove rsh-server (Scored)
# 2.1.4 - Remove rsh (Scored)
# 2.1.5 - Remove NIS Client (Scored)
# 2.1.6 - Remove NIS Server (Scored)
# 2.1.7 - Remove tftp (Scored)
# 2.1.8 - Remove tftp-server (Scored)
# 2.1.9 - Remove talk (Scored)
# 2.1.10 - Remove talk-server (Scored)
# 2.1.11 - Remove xinetd (Scored)
# 2.1.12 - Disable chargen-dgram (Scored)
# 2.1.13 - Disable chargen-stream (Scored)
# 2.1.14 - Disable daytime-dgram (Scored)
# 2.1.15 - Disable daytime-stream (Scored)
# 2.1.16 - Disable echo-dgram (Scored)
# 2.1.17 - Disable echo-stream (Scored)
# 2.1.18 - Disable tcpmux-server (Scored)


    # Remove Packages
     each($packages) |$item| {

       $pkg = split($item,'%')

       package { "(${pkg[2]}) - ${pkg[1]}":
         name    => $pkg[0],
         ensure  => absent,
       }
    }



} #EOF
