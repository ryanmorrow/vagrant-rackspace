class users {

  user { "teamcity":
    ensure  => present,
    uid     => '1001',
    gid     => '1001',
    shell   => '/bin/bash',
    home    => '/usr/local/teamcity',
    managehome => true,
  }
  group { "teamcity":
    ensure  => present,
    gid     => '1001',
  }
  user { "rmorrow":
    ensure  => present,
    uid     => '500',
    gid     => 'web',
    groups  => ["sudo"],
    shell   => '/bin/bash',
    home    => '/home/rmorrow',
    managehome => true,
  }
  user { "chale":
    ensure  => present,
    uid     => '501',
    gid     => 'web',
    groups  => ["sudo"],
    shell   => '/bin/bash',
    home    => '/home/chale',
    managehome => true,
  }
  group { "web":
    ensure  => present,
    gid     => '200',
  }
}
