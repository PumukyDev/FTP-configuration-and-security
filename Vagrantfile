# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/bullseye64"
  config.ssh.insert_key = false

  config.vm.define "dns" do |dns|
  dns.vm.network "private_network", ip: "192.168.57.10"
  end

config.vm.define "mirror" do |mirror|
  mirror.vm.network "private_network", ip: "192.168.57.20"
  end
config.vm.define "ftp" do |ftp|
  ftp.vm.network "private_network", ip: "192.168.57.30"
    end
end
