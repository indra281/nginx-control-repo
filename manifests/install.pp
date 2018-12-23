class nginx::install {
Package { 'httpd':

ensure => absent
}
package { ['epel-release', 'nginx']:

ensure => installed,
require => Package ['httpd'],

}


}
