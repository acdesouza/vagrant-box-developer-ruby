# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  APP = File.basename(Dir.getwd)

  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "developer-ruby-#{APP}"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "file:///Volumes/DATA/Users/acdesouza/instaladores/Vagrant/precise64.box"

  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--memory", "1024"]
    v.customize ["modifyvm", :id, "--cpus"  , "2"   ]
  end

  config.vm.synced_folder ".", "/home/vagrant/#{APP}"

  # Enable Unicorn
  config.vm.network :forwarded_port, guest: 5000, host: 5000

  # Provision
  config.vm.provision "shell", path: 'provision/install-dev-tools.sh'
  config.vm.provision "shell", path: 'provision/install-heroku-toolbelt.sh'
  config.vm.provision "shell", path: 'provision/install-rvm.sh', privileged: false

  # Copy id_rsa
end
