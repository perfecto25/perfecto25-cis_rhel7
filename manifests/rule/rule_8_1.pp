class cis_rhel7::rule::rule_8_1  (

  $banners = $::cis_rhel7::params::banners

) inherits ::cis_rhel7::params {

#includes Rules:
# 8.1 - Set Warning Banner for Standard Login Services (Scored)
# 8.2 - Remove OS Information from Login Warning Banners (Scored)


each($banners) |$banner| {
  file { "(8.1) - ${banner} exists":
      ensure => file,
      path   => $banner,
      owner  => 'root',
      group  => 'root',
      mode   => '0644',
    }

    file_line { "(8.2) - ${banner}: '\\m' removed":
      ensure  => absent,
      path    => $banner,
      line    => '\m',
      match   => '\\m',
      replace => false,
    }

    file_line { "(8.2) - ${banner}: '\\s' removed":
      ensure  => absent,
      path    => $banner,
      line    => '\s',
      match   => '\\s',
      replace => false,
    }

    file_line { "(8.2) - ${banner}: '\\v' removed":
      ensure  => absent,
      path    => $banner,
      line    => '\v',
      match   => '\\v',
      replace => false,
    }

    file_line { "(8.2) - ${banner}: '\\r' removed":
      ensure  => absent,
      path    => $banner,
      line    => '\r',
      match   => '\\r',
      replace => false,
    }

  }


} #EOF
