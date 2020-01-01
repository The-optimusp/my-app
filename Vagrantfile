# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.hostname = "docker"
  config.vm.box = "centos/7"

  config.vm.network "private_network", ip: "192.168.1.10"
  config.vm.synced_folder ".", "/vagrant"
  config.vm.provision "shell", path: "./provision.sh"
  config.vm.provider "virtualbox" do |vb|
  	vb.memory = "2048"
  	vb.cpus = 2
  end

end
