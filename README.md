Confluent Ansible Playbooks
---------------------------

Development Dependencies:

- Ansible 2.x `brew install ansible`
- Vagrant
- Vagrant Hostmanager Plugin `vagrant plugin install vagrant-hostmanager`
- Ruby 2.x

To run the playbooks on vagrant:

`vagrant up` if starting from scratch
`vagrant provision` if you already did `vagrant up` before and have a vm active

Running tests:

- `bundle install`
- `rake spec`

If the vagrant box isnt running, the rake task will run vagrant up but you will not see any output in STDOUT.
Alternatively you can bring the box up yourself with `vagrant up` and then the rake task will just run the tests against the active box.

