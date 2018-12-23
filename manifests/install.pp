class nginx::install {

package { 'httpd':
ensure => absent,
notify => Package['nginx'],
}

package { ['epel-release', 'nginx']:

ensure => installed,
#require => Package['httpd'],
}


}
