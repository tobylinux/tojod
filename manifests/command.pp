# File for commands
class tojod::command (
  String $vhost_file = 'tojodeb.conf'
) {
  if $facts['os']['family'] == 'Debian' {
    exec { "tojoexe ${vhost_file}":
      onlyif => "test -f /etc/tojo/${vhost_file}",
        path => ['/usr/bin','/usr/sbin','/bin','/sbin'],
      notify => Service[$tojod::service_name],
    }
  }
}
