# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  APP = File.basename(Dir.getwd)
  HOST_USER = (`whoami`).strip
  HOST_PASSWORD='S3nh4B1z4rr4'

  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "developer-ruby-#{APP}"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--memory", "1024"]
    v.customize ["modifyvm", :id, "--cpus"  , "2"   ]
  end

  # Use my own SSH id
  config.ssh.forward_agent = true

  config.vm.synced_folder ".", "/app/#{APP}"

  # Enable Unicorn
  config.vm.network :forwarded_port, guest: 5000, host: 5000

  # Provision
  config.vm.provision "shell", path: 'provision/create-host-user.sh', args: "#{HOST_USER} #{HOST_PASSWORD}"
  config.vm.provision "shell", path: 'provision/install-dev-tools.sh'
  config.vm.provision "shell", path: 'provision/install-heroku-toolbelt.sh', args: "#{HOST_USER}"
  config.vm.provision "shell", path: 'provision/install-rvm.sh', privileged: false, args: "#{HOST_USER}"
  config.vm.provision "shell", path: 'provision/config-bash.sh', privileged: false, args: "#{HOST_USER}"
end
