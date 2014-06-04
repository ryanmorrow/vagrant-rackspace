#!/usr/bin/env bash

wget http://apt.puppetlabs.com/puppetlabs-release-precise.deb
dpkg -i puppetlabs-release-precise.deb
apt-get update
#apt-get -y dist-upgrade

apt-get -y install ruby
apt-get -y install puppet
puppet module install puppetlabs-stdlib

cp -R /vagrant/modules/* /etc/puppet/modules/

if [ -f /usr/bin/puppet ];then
	/usr/bin/puppet apply /vagrant/manifests/default.pp;
	exit 0;
fi