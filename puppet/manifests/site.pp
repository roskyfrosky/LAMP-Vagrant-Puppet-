
# ------------------------------ INSTALL PACKAGES -----------------------

package { ['php5',
             'php5-cli',
             'libapache2-mod-php5',
             'php5-curl',
             'php5-gd',
             'php5-mcrypt',
             'php5-gmp',
             'php5-mysql',
	     'apache2',
	     'mysql-client',
             'mysql-server']:
    ensure => present;
	}
	
# ------------------------------- APACHE 2 -------------------------------
	service { 'apache2':
		ensure  => running,
		require => Package['apache2'];
	}

	file { '/var/www':
		ensure => 'link',
		target => '/vagrant/files',
		force => true
	}


