# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network       'private_network', ip: '192.168.111.90'
  config.vm.synced_folder 'code/', '/home/vagrant/app'

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
  end

  config.vm.provision     'shell', path: 'provision/bootstrap.sh'
end
