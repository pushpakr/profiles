class profiles::webhost {
 class { 'apache': }
  apache::vhost { 'first.example.com':
    port    => '8010',
    docroot => '/var/www/first'
  }
  apache::vhost { 'second.example.com':
    port    => '8011',
    docroot => '/var/www/second'
  }
 File {"/var/www/first/index1.html":
                ensure => present,
		source => 'puppet:///modules/profiles/index1.html',
        }
 File {"/var/www/second/index2.html":
                ensure => present,
		source => 'puppet:///modules/profiles/index2.html',
        }
}
