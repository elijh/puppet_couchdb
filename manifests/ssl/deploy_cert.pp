define couchdb::ssl::deploy_cert ($cert, $key) {

  file { $couchdb::cert_path:
    ensure  => 'directory',
    mode    => '0600',
    owner   => 'couchdb',
    group   => 'couchdb';
  }

  file { "$couchdb::cert_path/server_cert.pem":
    mode    => '0644',
    owner   => 'couchdb',
    group   => 'couchdb',
    content => $cert
  }

  file { "$couchdb::cert_path/server_key.pem":
    mode    => '0600',
    owner   => 'couchdb',
    group   => 'couchdb',
    content => $key
  }

  
}
