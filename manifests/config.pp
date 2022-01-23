# File to input configs
class tojod::config {
  $tojod::config_paths.each |String $config_path| {
    file { $config_path :
      ensure => directory,
    }
  }
}
