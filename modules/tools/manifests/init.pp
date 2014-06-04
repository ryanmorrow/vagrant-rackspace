class tools {

  # package install list
  $packages = [
    "curl",
    "vim",
    "htop",
    "git",
    "build-essential",
    "ntp",
    "make",
    "libpcre3-dev",
    "postfix",
    "default-jre",
    "openssl"
  ]

  # install packages
  package { $packages:
    ensure => present,
    require => Exec["apt-get update"]
  }
}
