class nginx::install {

package { 'httpd':
ensure => absent,
#before => Package['nginx'],
}

package { ['epel-release', 'nginx']:

ensure => installed,
after => Package['httpd'],
}


}
