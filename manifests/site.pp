node default {
  file { '/root/readme':
    ensure => file,
    content => 'This is a test file for $fqdn',
  }
}

node 'master.puppet.vm' {
  include role::master_server
}

node /^web/ {
  inlcude role::app_server
}

node /^db/ {
  include role::db_server
}
