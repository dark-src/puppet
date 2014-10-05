import 'nodes.pp'
include 'git'
include 'emacs'
git::config { 'user.name':
  value => 'Dark src himself',
}

git::config { 'user.email':
  value => 'nishantrayan@gmail.com',
}
