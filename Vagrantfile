Vagrant.configure("2") do |config|
  config.vm.box = "debian/bullseye64"
  config.ssh.insert_key = false

  ansible_config_file = "./ansible.cfg"
  ansible_inventory_path = "./ansible/inventory/vagrant_inventory.yml"

  config.vm.define "dns" do |dns|
    dns.vm.hostname = "ns.sri.ies"
    dns.vm.network "private_network", ip: "192.168.57.10"
    dns.vm.network "forwarded_port", guest: 22, host: 2100
    dns.vm.provision "ansible" do |ansible|
      ansible.config_file = ansible_config_file
      ansible.playbook = "ansible/ns-playbook.yml"
      ansible.inventory_path = ansible_inventory_path
    end
  end

  config.vm.define "mirror" do |mirror|
    mirror.vm.hostname = "mirror.sri.ies"
    mirror.vm.network "private_network", ip: "192.168.57.20"
    mirror.vm.network "forwarded_port", guest: 22, host: 2200
    mirror.vm.provision "ansible" do |ansible|
      ansible.config_file = ansible_config_file
      ansible.playbook = "ansible/ftp-playbook.yml"
      ansible.inventory_path = ansible_inventory_path
    end
  end

  config.vm.define "ftp" do |ftp|
    ftp.vm.hostname = "ftp.sri.ies"
    ftp.vm.network "private_network", ip: "192.168.57.30"
    ftp.vm.network "forwarded_port", guest: 22, host: 2300
    ftp.vm.provision "ansible" do |ansible|
      ansible.config_file = ansible_config_file
      ansible.playbook = "ansible/ftp-playbook.yml"
      ansible.inventory_path = ansible_inventory_path
    end
  end
end
