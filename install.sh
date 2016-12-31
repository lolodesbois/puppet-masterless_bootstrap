#!/bin/bash

# This bootstrap script is used to install or update a server/desktop computer
# using puppet and librarian-puppet as configuration tools

# skip SSL check for git
export GIT_SSL_NO_VERIFY=1

PUPPET_BIN_FOLDER=/opt/puppetlabs/puppet/bin

# Install/update modules according to Puppet file
if [ -d "modules" ] ; then
	echo "./modules folder found, then update puppet modules using librarian puppet"
	$PUPPET_BIN_FOLDER/librarian-puppet update
else
	echo "./modules folder not found, then check if librarian puppet installed"

	if [ ! -f $PUPPET_BIN_FOLDER/librarian-puppet ] ; then	
		echo "librarian-puppet not found then install gem module(ruby) to manage puppet module dependencies download"
		sudo $PUPPET_BIN_FOLDER/gem install librarian-puppet
	fi

	echo "Install puppet modules into modules folder using librarian puppet "
	$PUPPET_BIN_FOLDER/librarian-puppet install
fi

echo "Apply puppet configuration using modules from ./modules and manifest ./manifests/site.pp"
sudo puppet apply --modulepath=./modules/ manifests/site.pp

