# File to start service
class tojod::service {
  service { $tojod::service_name:
    ensure => running,
  }
}

