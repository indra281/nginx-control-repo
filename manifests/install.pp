class nginx::install {

package { 'httpd':
ensure => absent,
}

package { ['epel-release', 'nginx']:

ensure => installed,
require => Package [ 'httpd'],
}


}
