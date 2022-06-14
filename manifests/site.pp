node default {
  file { '/root/readme':
    ensure => file,
    content => 'This is a test file',
  }
}

node 'master.puppet.vm' {
  include role::master_server
}
