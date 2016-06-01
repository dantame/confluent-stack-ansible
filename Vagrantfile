# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = 2

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.synced_folder ".", "/vagrant", :disabled => true

  config.vm.network "forwarded_port", guest: 9092, host: 9092
  config.vm.network "forwarded_port", guest: 2181, host: 2181

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "site.yml"
  end
end
