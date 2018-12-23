class nginx::install inherits nginx {

package { 'httpd':
ensure => absent,
before => Package['nginx'],
}

package { ['epel-release', 'nginx']:

ensure => installed,

}


}
