# Adding site file for node
node 'rhel7' {
  include tojod

  tojod::vhost { 'colo':
    server_name   => 'colo.tobylinux.com',
    document_root => 'colo',
    }
  }

node 'ubu' {
  include tojod

  tojod::vhost { 'colorado':
    server_name   => 'colorado.tobylinux.com',
    document_root => 'colorado',
  }

  class { 'tojod::command':
    vhost_file => 'colorado.tobylinux.com.conf',
    require    => Tojod::Vhost['colorado'],
  }

  class { 'tojod::uncommand':
    vhost_file => 'tojo.conf',
  }
}
