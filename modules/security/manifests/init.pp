class security {

  # package install list
  $packages = [
    "fail2ban",
    "openssh-server",
    "iptables",
  ]

  package { $packages:
    ensure => present,
    require => Exec["apt-get update"]
  }

  # Write iptables.up.rules 
  file { "/etc/iptables.up.rules":
    ensure => present,
    source => "/vagrant/modules/security/conf/iptables.up.rules",
    owner => "root",
    group => "root",
    mode => 644,
  }

  # Write iptables.sh to up rules
  file { "/etc/network/if-up.d/iptables.sh":
    ensure => present,
    source => "/vagrant/modules/security/conf/iptables.sh",
    require => Package["iptables"],
    owner => "root",
    group => "root",
    mode => 755,
  }

  #exec {'/etc/network/if-up.d/iptables.sh':}

# define the service to restart

  # Write iptables.sh to up rules
  file { "/etc/ssh/sshd_config":
    notify  => Service["ssh"],  # this sets up the relationship
    ensure => present,
    source => "/vagrant/modules/security/conf/sshd_config",
    require => Package["openssh-server"],
    owner => "root",
    group => "root",
    mode => 755,
  }
  service { ssh:
      ensure => running,
      subscribe => File["/etc/ssh/sshd_config"],
  }


}
