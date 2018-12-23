class nginx::install inherits nginx {

package { 'httpd':
ensure => absent,
#before => Package['nginx'],
}

package { $::nginx::package:

ensure => installed,
after => Package['httpd'],
}


}
