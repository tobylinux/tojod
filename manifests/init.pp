# Add main class to point to install class
class tojod (
  String $install_name,
  Array $config_paths,
  String $service_name,
  String $vhost_dir,
) {
  contain tojod::install
  contain tojod::config
  contain tojod::service

  Class['::tojod::install']
  -> Class['::tojod::config']
  ~> Class['::tojod::service']
}
