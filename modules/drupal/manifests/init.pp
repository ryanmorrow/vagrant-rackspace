class drupal {
	# install composer

	exec { "composer_install":
		command => 'curl -sS https://getcomposer.org/installer | /usr/bin/php -- --install-dir=/usr/local/bin/',
		creates => '/usr/local/bin/composer.phar',
		path => '/usr/local/bin:/usr/bin:/bin',
		require => Package["php5-cli"],
	}


  file { "/usr/local/bin/composer":
    ensure => link,
    target => "/usr/local/bin/composer.phar",
  }

 }
