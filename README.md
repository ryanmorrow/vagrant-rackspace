# Create a LAMP production environment on Rackspace using Vagrant/Puppet


## The Heros
None of this would be possible without standing on the shoulders of intellectual giants
* [jrodriguezjr/puppet-lamp-stack](https:github.com/jrodriguezjr/puppet-lamp-stack)
* [PerishableDave/puppet-lamp-stack](https://github.com/PerishableDave/puppet-lamp-stack)
* [jas0nkim/my-vagrant-puppet-lamp](https://github.com/jas0nkim/my-vagrant-puppet-lamp)
* [Puppet Cookbook](http://puppetcookbook.com/posts/creating-a-directory.html)

## Noobs
If you don't know why you want Vagrant, read this [guy's awesome post](https://raw.github.com/mcandre/hello-vagrant/master/README.md).

## Prerequisites
* [Vagrant](http://www.vagrantup.com/)
* [Rackspace Cloud](https://www.rackspace.com/)
* [Ubuntu 64 Saucy - Puppet and Chef](http://glazzies.net/ubuntu_saucy_64_x86.box)
    MD5 (ubuntu_saucy_64_x86.box) = 54d9739b61151bc7238a735573748a2f

Add your keys to the vagrantfile

    % vagrant up --provider=rackspace

Once the server is loaded, to login to the vm

    % vagrant ssh

