#!/bin/bash

if [ $(facter virtual) = 'virtualbox' ] ; then
    rm /etc/udev/rules.d/70-persistent-net.rules | true
    mkdir /etc/udev/rules.d/70-persistent-net.rules | true
    rm /lib/udev/rules.d/75-persistent-net-generator.rules | true
    rm -rf /dev/.udev/ /var/lib/dhcp/* | true
    echo "pre-up sleep 2" >> /etc/network/interfaces | true
fi
