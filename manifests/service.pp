class nginx::service inherits nginx {

service { 'nginx':

ensure => running,
enable => true,
}

file { $::nginx::config_path:
ensure => present,
source => 'puppet:///modules/nginx/index.html',
mode => $::nginx::mode,

}

}
