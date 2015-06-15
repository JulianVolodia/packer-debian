#!/bin/bash

# Install additional guests
mkdir /tmp/vbox
VER=$(cat /home/vagrant/.vbox_version)
mount -o loop /home/vagrant/VBoxGuestAdditions_$VER.iso /tmp/vbox 

yes | sh /tmp/vbox/VBoxLinuxAdditions.run | true
umount /tmp/vbox | true
rmdir /tmp/vbox | true
rm /home/vagrant/*.iso | true
ln -s /opt/VBoxGuestAdditions-*/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions

# Cleanup
rm -rf VBoxGuestAdditions_*.iso VBoxGuestAdditions_*.iso.? | true
rm -rf /usr/src/virtualbox-ose-guest* | true
rm -rf /usr/src/vboxguest* | true
