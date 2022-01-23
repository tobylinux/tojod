# Adding Install class to install package
class tojod::install {
  package { "${tojod::install_name}":
    ensure => present,
  }
}
