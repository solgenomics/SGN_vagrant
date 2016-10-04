# SGN Development Vagrant

##Intro

This git repository serves TWO purposes:

1) Stores a working virtualbox virtual machine that can be imported to Virtualbox for immediate use.
2) Stores scripts for the generation of a brand new virtual machine.

For Logging In:
```
username: vagrant
password: vagrant
```

##Purpose 1 Tutorial

Make sure you have Git LFS, in order to handle the large virtualbox image in this repo: https://git-lfs.github.com/

Make sure you have VirtualBox AND the VirtualBox Extension Pack installed
https://www.virtualbox.org/wiki/Downloads

Step 1: Clone this repo on your computer.
Step 2: Open VirtualBox and click File->Import Appliance. Select the virtualbox image in this repo.
Step 3: Start the virtual machine.

##Purpose 2 Tutorial

Install Vagrant from https://www.vagrantup.com/downloads.html 

Make sure you have Git LFS, in order to handle the large virtualbox image in this repo: https://git-lfs.github.com/

Make sure you have VirtualBox AND the VirtualBox Extension Pack installed
https://www.virtualbox.org/wiki/Downloads

Step 1: Clone this repo on your computer.
Step 2:

Tell vagrant to configure the VM
```
vagrant up
```
This may take around an hour or two

Step 3: Open VirtualBox. The newly generated virtual machine will show up.
Step 4: Start the virtual machine.
Step 5: Follow the welcome.txt instructions to fully customize the virtual machine to your needs.

To remove any trace of the VM
```
vagrant destroy
```
