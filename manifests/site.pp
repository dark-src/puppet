import 'nodes.pp'
include 'git'
git::config { 'user.name':
  value => 'Dark src himself',
}

git::config { 'user.email':
  value => 'nishantrayan@gmail.com',
}
