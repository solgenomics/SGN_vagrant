# vagrant

##Pre-reqs

Install Vagrant from https://www.vagrantup.com/downloads.html

There is a large database dump in this repo! Use Git LFS to be able to handle this https://git-lfs.github.com/!!

Make sure you have VirtualBox AND the VirtualBox Extension Pack installed
https://www.virtualbox.org/wiki/Downloads


##Initializing SGN vagrant 

Make a directory for vagrant on your machine
```
mkdir vagrant/
```


Git clone this repo to your machine into that directory.
```
git clone https://github.com/solgenomics/SGN_vagrant.git
```


Add the base image for Debian Jessie to your machine. Base images can be found here https://atlas.hashicorp.com/boxes/search
```
vagrant box add ARTACK/debian-jessie
```

All the database configuration happens on line 202 of config/provision.sh so feel free to adjust this to your needs.


##Using vagrant

Go that the SGN_vagrant directory
```
cd vagrant/SGN_vagrant/
```

Tell vagrant to configure the VM
```
vagrant up
```
This may take around an hour or two


The VM will show up as a regular VM in Virtualbox from this point on. You can start/stop the VM through virtual box.
Vagrant has its own start/stop/reload commands if you don't want to use virtualbox: https://www.vagrantup.com/docs/cli/

User Info:
```
username: vagrant
password: vagrant
```


Install the VirtualBox Guest Additions. This makes using the virtualbox much nicer by allowing copy/paste between host and VM, and allowing screen resizing
```
While in the VirtualBox VM, Click Devices->Insert Guest Additions CD, then:
sudo mount /dev/sr0 /mnt
cd /mnt
sudo ./VBoxLinuxAdditions.run
Then restart virtualbox 
```


To remove any trace of the VM
```
vagrant destroy
```
