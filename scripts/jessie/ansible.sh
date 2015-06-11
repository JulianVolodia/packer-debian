#!/bin/bash

# Ansible prequesites
apt-get -y install python ruby ruby-json facter ohai

# Install backports for jessie
if [ $(facter lsbdistcodename) = 'jessie' ] ; then
    echo "deb http://http.debian.net/debian jessie-backports main" > /etc/apt/sources.list.d/backports.list
    apt-get update
fi

# Install Ansible
apt-get -y install ansible
touch /var/log/ansible.log
chown vagrant. /var/log/ansible.log
