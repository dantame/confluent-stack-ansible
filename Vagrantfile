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
  c.vm.network "forwarded_port", guest: 8081, host: 8081
  c.vm.network "forwarded_port", guest: 5555, host: 5555
  c.vm.network "forwarded_port", guest: 5556, host: 5556

  c.vm.provision :ansible do |ansible|
    ansible.playbook = "site.yml"
    ansible.groups = {
      "kafka" => ["default"],
      "zookeeper" => ["default"],
      "schema-registry" => ["default"],
      "riemann" => ["default"]
    }

    ansible.host_vars = {
      "default" => {
        "node_id" => 1
      }
    }
  end

  c.vm.provider "virtualbox" do |v|
    v.memory = 8096
    v.cpus = 2
  end
end
