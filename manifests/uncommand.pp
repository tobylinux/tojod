# File for uncommands
class tojod::uncommand (
  String $vhost_file = 'tojo.conf'
) {
  if $facts['os']['family'] == 'Debian' {
    exec { "tojodebexe ${vhost_file}":
      onlyif => "test -f /etc/tojo/${vhost_file}",
        path => ['/usr/bin','/usr/sbin','/bin','/sbin'],
      notify => Service[$tojod::service_name],
    }
  }
}
