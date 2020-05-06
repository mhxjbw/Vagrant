#!/bin/sh

# Add the Perforce package key and repository. 

wget -q http://package.perforce.com/perforce.pubkey -O - | sudo apt-key add - 
sudo echo 'deb http://package.perforce.com/apt/ubuntu xenial release' >/etc/apt/sources.list.d/perforce.sources.list

# Now update the packages so we can get P4D.

sudo apt-get update
sudo apt-get install helix-p4d -y
