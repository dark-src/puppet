node 'demo' {
  include nginx
  include ssh
  include sudoers
  user { 'art':
    ensure     => present,
    comment    => 'Art Vandeley',
    home       => '/home/art',
    managehome => true,
  }
  ssh_authorized_key { 'art_ssh':
    user       => 'art',
    type       => 'rsa',
    key        => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCEApMvxupod4K0OxImWI9mGJwCUxB9iK+xXW2WCioQ4OrBqrL6cx4yN8QKC0RKMznnetfpUKPXQ9+0O3IzIB8X+SAZlsom4Ljuv0hr4mM1pIzplrzb8WTUVYB4W/EuY6/2FhIEOPvVXPej1kndJigs0E+io92YYNUenHO998SzEEBFNOl/PafC3SXwQ082RLyZk/zFNJR0uKi5xcSK6Z6MXiR5C5MLQiL8SuD4E1cIWCe82uyd91dtbHOR29suXCu4JFTrfHQtsHwIlY8XT232UyGvOMmOwTLLbunvWk9rOXsBZQN+1rJgawZ6M9/JD/D0QocYjHK8ko1qWHFjNztv',
  }
}

node 'demo2' {
  include nginx
}
