#!/bin/bash

if [ $(facter lsbdistcodename) = 'jessie' ] ; then
    # Prepare puppetlabs repo
    wget http://apt.puppetlabs.com/puppetlabs-release-jessie.deb
    dpkg -i puppetlabs-release-jessie.deb
    rm -f puppetlabs-release-jessie.deb
    apt-get -y update
fi

# Install puppet
apt-get -y install puppet
