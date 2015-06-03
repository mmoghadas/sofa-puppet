class api_key (
  $health_url = hiera('api_key::health_url'),
  $token = hiera('api_key::token'),
  $service_name = hiera('service::name'),
  $service_interval = hiera('service::interval'),
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
