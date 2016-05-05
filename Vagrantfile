# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure(2) do |config|

	# The most common configuration options are documented and commented below.
	# For a complete reference, please see the online documentation at
	# https://docs.vagrantup.com.
	
	# MULTIMACHINE SETUP: Will provision a SGN_Dev_Vagrant and a DB_Dev_Vagrant machine. This way the database is separate, but can communicate via the private network. This mirrors the production setup better.	
	
	config.vm.define "sgndev", primary: true do |sgndev|
		
		# Every Vagrant development environment requires a box. You can search for
		# boxes at https://atlas.hashicorp.com/search.
		# sgndev.vm.box = "debian/jessie64"  ##Problem: No virtualbox guest additions installed
		sgndev.vm.box = "debian/contrib-jessie64" ##Has guest additions installed. Problem: Only 10GB
		# sgndev.vm.box = "ARTACK/debian-jessie" ##Problem: only 20GB
		# sgndev.vm.box = "hmaalmi/debian-jessie-100" ##Has 100GB. Problem: too SLOW

		# Create a forwarded port mapping which allows access to a specific port
		# within the machine from a port on the host machine. In the example below,
		# accessing "localhost:8080" will access port 80 on the guest machine.
		# sgndev.vm.network "forwarded_port", guest: 80, host: 8080

		# Create a private network, which allows host-only access to the machine
		# using a specific IP.
		sgndev.vm.network "private_network", ip: "192.168.33.10"

		# Create a public network, which generally matched to bridged network.
		# Bridged networks make the machine appear as another physical device on
		# your network.
		# sgndev.vm.network "public_network"

		# Share an additional folder to the guest VM, other than /vagrant. The first argument is
		# the path on the host to the actual folder. The second argument is
		# the path on the guest to mount the folder. And the optional third
		# argument is a set of non-required options.
		sgndev.vm.synced_folder "shared", "/shared", nfs: true

		sgndev.vm.provider "virtualbox" do |vb|
			vb.name = "SGN_Dev_Vagrant"

			# Display the VirtualBox GUI when booting the machine
			vb.gui = true

			# Customize the amount of memory on the VM and number of CPUs:
			vb.memory = 2048
			vb.cpus = 1
			vb.customize ["modifyvm", :id, "--vram", "32"]
			vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
		end

		#
		# View the documentation for the provider you are using for more
		# information on available options.

		# Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
		# such as FTP and Heroku are also available. See the documentation at
		# https://docs.vagrantup.com/v2/push/atlas.html for more information.
		# sgndev.push.define "atlas" do |push|
		#   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
		# end

		# Enable provisioning with a shell script. Additional provisioners such as
		# Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
		# documentation for more information about their specific syntax and use.
		sgndev.vm.provision "shell", path: "common_config/common_config.sh"
		sgndev.vm.provision "shell", path: "sgndev_config/provision.sh"
		
	end

	config.vm.define "dbdev" do |dbdev|
		
		# dbdev.vm.box = "debian/jessie64"  ##Problem: No virtualbox guest additions installed
		dbdev.vm.box = "debian/contrib-jessie64" ##Has guest additions installed. Problem: Only 10GB
		# dbdev.vm.box = "ARTACK/debian-jessie" ##Problem: only 20GB
		# dbdev.vm.box = "hmaalmi/debian-jessie-100" ##Has 100GB. Problem: too SLOW

		# dbdev.vm.network "forwarded_port", guest: 80, host: 8080

		dbdev.vm.network "private_network", ip: "192.168.33.20"

		# dbdev.vm.network "public_network"

		dbdev.vm.synced_folder "shared", "/shared", nfs: true

		dbdev.vm.provider "virtualbox" do |vb|
			vb.name = "DB_Dev_Vagrant"

			vb.gui = false
			vb.memory = 2048
			vb.cpus = 1
		end

		dbdev.vm.provision "shell", path: "common_config/common_config.sh"
		dbdev.vm.provision "shell", path: "dbdev_config/provision.sh"
		
		dbdev.vm.provision "shell", inline: "sudo less /vagrant/welcome.txt"
		
	end
  
end
