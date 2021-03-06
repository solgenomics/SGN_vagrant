# SGN Development Vagrant

## Intro

This git repository serves TWO purposes:

#### Purpose 1) Do you need a virtual machine for immediate use?<br/>
#### Purpose 2) Do you want to generate a brand new virtual machine?<br/>
<br/>

For Logging In:
```
username: vagrant
password: vagrant
```
<br/>

## Purpose 1 Tutorial

Make sure you have VirtualBox AND the VirtualBox Extension Pack installed
https://www.virtualbox.org/wiki/Downloads

Step 1: Download the VirtualBox virtual machine from here: <br/>
* ftp://solgenomics.net/virtualbox/SGNDev160.ova 

Step 2: Open VirtualBox and click File->Import Appliance. Select the downloaded OVA file.<br/>
Step 3: Start the virtual machine.<br/>
Step 4: In a terminal enter: sudo chown -R www-data:www-data /tmp/vagrant/SGN-site/; sudo service sgn start
The site will be available on localhost:8080


## Purpose 2 Tutorial

Install Vagrant from https://www.vagrantup.com/downloads.html 

Make sure you have VirtualBox AND the VirtualBox Extension Pack installed
https://www.virtualbox.org/wiki/Downloads

Step 1: Clone this repo on your computer.<br/>
Step 2:<br/>

Tell vagrant to configure the VM
```
vagrant up
```
This may take around an hour or two

Step 3: Open VirtualBox. The newly generated virtual machine will show up.<br/>
Step 4: Start the virtual machine.<br/>
Step 5: Follow the welcome.txt instructions to fully customize the virtual machine to your needs.<br/>

To remove any trace of the VM
```
vagrant destroy
```
