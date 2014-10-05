class emacs {
  package { 'emacs24':
    ensure => installed,
  }

  file { '/home/ubuntu/.emacs.d/init.el':
    source => 'puppet:///modules/emacs/init.el',
  }
}