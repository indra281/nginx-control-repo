class nginx::install inherits nginx {

package { 'httpd':
ensure => absent,
before => Package['nginx'],
}

package { $::nginx::packages:

ensure => installed,

}


}
