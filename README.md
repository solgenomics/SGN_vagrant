# vagrant

##Pre-reqs

Install Vagrant from https://www.vagrantup.com/downloads.html

There is a large database dump in this repo! Use Git LFS to be able to handle this https://git-lfs.github.com/!!

Make sure you have VirtualBox AND the VirtualBox Extension Pack installed
https://www.virtualbox.org/wiki/Downloads


##Initializing

Make a directory for vagrant on your machine
```
mkdir vagrant/
```


Git clone this repo to your machine into that directory.
```
git clone https://github.com/solgenomics/SGN_vagrant.git
```



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

Follow the welcome.txt instructions to finish set up.


To remove any trace of the VM
```
vagrant destroy
```

