#!/bin/bash
apt-get update
# install curl to fix broken wget while retrieving content from secured sites
apt-get -y install curl

# install facter, because it's needed...
apt-get -y install facter
