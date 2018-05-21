# Deploy some custom or third part agents for MCollective.

class mcoagents {

    include mcollective

    $aplugfolder = '/opt/puppetlabs/mcollective/plugins/mcollective/agent'

    File {
        ensure  => present,
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
        require => Class['mcollective'],
        notify  => Service['mcollective'],
    }

    $agents = [ 'clean', 'system' ]

    $agents.each |$a| {
        [ 'ddl', 'rb', 'json' ].each |$ext| {
            file { "${aplugfolder}/${a}.${ext}":
                source => "puppet:///modules/mcoagents/${a}.${ext}",
            }
        }
    }

}
