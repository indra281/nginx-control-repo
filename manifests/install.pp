class nginx::install {

package { ['epel-release', 'nginx']:

ensure => installed,

}


}
