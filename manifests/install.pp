# Adding Install class to install package
class tojod::install {
  package { 'tojod':
    ensure => present,
  }
}
