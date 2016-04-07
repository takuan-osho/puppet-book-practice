$content = "Hello, Puppet!"

file { '/tmp/hello_puppet_template.txt':
  content => template('hello_puppet_template.erb'),
}

file { '/etc/nginx/site-available':
  ensure => directory,
  owner  => 'root',
  group  => 'root',
  mode   => '0755',
}

file { '/etc/nginx/site-enabled':
  ensure => directory,
  owner  => 'root',
  group  => 'root',
  mode   => '0755',
}

file { '/etc/nginx/site-available/mysite.conf':
  ensure => present,
  owner => 'root',
  group => 'root',
  mode => '0644',
}
