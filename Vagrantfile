# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = 2

Vagrant.configure(VAGRANTFILE_API_VERSION) do |c|
  c.hostmanager.enabled = true
  c.hostmanager.manage_guest = true
  c.hostmanager.aliases = %w(ubuntu-xenial)

  c.vm.box = "ubuntu/xenial64"

  c.vm.synced_folder ".", "/vagrant", :disabled => true

  c.vm.network "forwarded_port", guest: 9092, host: 9092
  c.vm.network "forwarded_port", guest: 2181, host: 2181

  c.vm.provision :ansible do |ansible|
    ansible.playbook = "site.yml"
  end

  c.vm.provider "virtualbox" do |v|
    v.memory = 8096
    v.cpus = 2
  end
end
