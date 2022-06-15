class profile::ssh_server{
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => running,
    enable => true,
  }
  ssh_authorized_by {'root@master.puppet.vm':
    ensure => present,
    owner => 'root',
    type => 'ssh-rsa',
    key => '',
  }
}
