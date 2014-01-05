# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise64"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  config.vm.network :forwarded_port, guest: 80, host: 8080

  config.vm.provision :shell, :path => "./vagrant/scripts/update_ubuntu.sh"
  config.vm.provision :shell, :path => "./vagrant/scripts/install_go.sh", :args => "/home/vagrant"
  config.vm.provision :shell, :path => "./vagrant/scripts/install_postgresql.sh"
  config.vm.provision :shell, :path => "./vagrant/scripts/setup_postgresql.sh"
  config.vm.provision :shell, :path => "./vagrant/scripts/install_nginx.sh"
  config.vm.provision :shell, :path => "./vagrant/scripts/setup_nginx.sh", :args => ["/vagrant/vagrant/config/nginx.conf", "nickmcguire"]
end
