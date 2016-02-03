# vagrant

Install Vagrant from https://www.vagrantup.com/downloads.html

Make a directory for vagrant on your machine
```
mkdir vagrant/
```

Git clone this repo to your machine.

Go that the directory
```
cd vagrant/SGN_vagrant/
```

Add the base image for Debian Jessie to your machine. Base images can be found here https://atlas.hashicorp.com/boxes/search
```
vagrant box add ARTACK/debian-jessie
```

Make sure you have VirtualBox AND the VirtualBox Extension Pack installed
https://www.virtualbox.org/wiki/Downloads

Add a database dump called database_dump.pgsql.gz into the config/ directory.
Github did not allow me to package a database dump into the repo because of size limitations.
All the database configuration happens on line 202 of config/provision.sh so feel free to adjust this to your needs.

Tell vagrant to configure the VM
```
vagrant up
```
This may take around an hour or two

The VM will show up as a regular VM in Virtualbox from this point on. You can start/stop the VM through virtual box.
Vagrant has its own start/stop/reload commands if you don't want to use virtualbox: https://www.vagrantup.com/docs/cli/

To remove any trace of the VM
```
vagrant destroy
```
