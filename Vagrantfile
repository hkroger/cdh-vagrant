# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "bento/centos-7.4"

  # Fixes changes from https://github.com/mitchellh/vagrant/pull/4707
  config.ssh.insert_key = false

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.

  # CentOS 7.0 x86_64
  #config.vm.box_url = "http://cloud.terry.im/vagrant/oraclelinux-7-x86_64.box"

  # HARDWARE NOTE: Change this values according to your hardware.
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", 4096] # RAM allocated to each VM
    vb.customize ["modifyvm", :id, "--cpus", 2] # CPUs allocated to each VM
    vb.customize ["modifyvm", :id, "--cpuexecutioncap", 90] # Single virtual CPU can use up to 90% of a single host CPU.
  end

  config.vm.provision :shell, :path => "bootstrap.sh"

  config.vm.define :c7401 do |c7401|
    c7401.vm.hostname = "c7401.cdh.testlab"
    c7401.vm.network :private_network, ip: "192.168.74.101"
  end

  config.vm.define :c7402 do |c7402|
    c7402.vm.hostname = "c7402.cdh.testlab"
    c7402.vm.network :private_network, ip: "192.168.74.102"
  end

  config.vm.define :c7403 do |c7403|
    c7403.vm.hostname = "c7403.cdh.testlab"
    c7403.vm.network :private_network, ip: "192.168.74.103"
  end

  config.vm.define :c7404 do |c7404|
    c7404.vm.hostname = "c7404.cdh.testlab"
    c7404.vm.network :private_network, ip: "192.168.74.104"
  end

  config.vm.define :c7405 do |c7405|
    c7405.vm.hostname = "c7405.cdh.testlab"
    c7405.vm.network :private_network, ip: "192.168.74.105"
  end

  config.vm.define :c7406 do |c7406|
    c7406.vm.hostname = "c7406.cdh.testlab"
    c7406.vm.network :private_network, ip: "192.168.74.106"
  end

  config.vm.define :c7407 do |c7407|
    c7407.vm.hostname = "c7407.cdh.testlab"
    c7407.vm.network :private_network, ip: "192.168.74.107"
  end

  config.vm.define :c7408 do |c7408|
    c7408.vm.hostname = "c7408.cdh.testlab"
    c7408.vm.network :private_network, ip: "192.168.74.108"
  end

end
