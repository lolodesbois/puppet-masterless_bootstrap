# puppet masterless bootstrap

Installs or upgrade software on Linux computer where it was run

# Requirements 

* Linux plateform (ubuntu distro is the target...)  
* Puppet client should be pre-installed
* Git should be pre-installed

See puppet-masterless_base project to automate pre-requisite

=======

## Installation

Open terminal console (Ctrl + Alt + t) and input following commands

    $> export GIT_SSL_NO_VERIFY=1
    $> git config --global user.name "[your LDAP Login]"
    $> git config --global user.email "firstname.lastname@pictime.com"
    $> git config --global credential.helper store
    $> git clone https://github.com/lolodesbois/puppet-masterless_bootstrap.git
    $> cd puppet-masterless_bootstrap/
    $> install.sh (if problem occurs with librarian, change the path to librarian puppet to /opt/puppetlabs/puppet/bin/librarian-puppet install)

You have half an hour to taste your favorite beer
