# Add main class to point to install class
class tojod (
  String $install_name,
  Array $config_paths,
){
  contain tojod::install
  contain tojod::config

  Class['::tojod::install']
  -> Class['::tojod::config']
}
