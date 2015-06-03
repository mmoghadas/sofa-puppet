class api_key (
  $token = hiera('api_key::token')
)
{

  file { 'api_key_yaml':
    ensure  => present,
    path    => '/root/sofa.yml',
    group   => root,
    owner   => root,
    mode    => '0644',
    content => template('api_key/api_key.erb'),
  }

}
