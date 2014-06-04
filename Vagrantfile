
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "dummy"
  config.ssh.private_key_path = "../../.ssh/id_rsa"

  config.vm.provider :rackspace do |rs|
    rs.username        = "USERNAME HERE"
    rs.api_key         = "API KEY HERE"
    rs.server_name     = "dev-web"
    #rs.flavor          = /1GB/
    rs.flavor           = '3' // 1GB

    # Latest release of ubuntu didn't have puppet, so loading ringtail 13.04
    #rs.image           = /Ubuntu/
    rs.image           = "7b8abc3f-5fd2-4d02-9e9a-16d43fc7128e"

    rs.public_key_path = ".ssh/authorized_keys"
    rs.rackspace_region = "iad"
    rs.metadata = {"key" => "value"}       # optional
  end

  # Add the box version

  config.ssh.pty = true

  config.vm.provision :shell, :path => 'manifests/bootstrap.sh'

  # Enable the Puppet provisioner, with will look in manifests
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "default.pp"
    puppet.module_path = "modules"
  end
end
