
	#Update Aptitude
	sudo apt-get update -y
	sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade
	sudo apt-get install -y gcc build-essential module-assistant
	
	#Install Emacs and gedit and vim 
	sudo apt-get install -y emacs gedit vim less
	
	#Install htop
	sudo apt-get install htop -y
	
	#Install git 
	sudo apt-get install git -y
	git config --global push.default simple
	
	#Install linux headers for good measure
	sudo apt-get install linux-headers-$(uname -r) -y
	
	#Install perl-docs
	sudo apt-get install perl-doc -y 
	
	#Install ack-grep
	sudo apt-get install ack-grep -y
	
	#Set root user password to vagrant 
	yes vagrant | sudo passwd root
	
	#Set Superuser: vagrant user already NOPASSWD superuser

	#Install curl
	sudo apt-get install curl -y
	
	#Install cpanmin
	curl -L https://cpanmin.us | perl - --sudo App::cpanminus
	
	#Install postgres 9.4
	#sudo apt-get install postgresql-9.4 -y
	#sudo apt-get install postgresql-contrib-9.4 -y 
	
	#Install postgres 9.5
	sudo su -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main 9.5' > /etc/apt/sources.list.d/postgresql.list"
	wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
	sudo apt-get update -y 
	sudo apt-get install postgresql-9.5 -y
	
	#Bashrc customization
	#Add git branch display 
	sed -i s/#force_color_prompt=yes/force_color_prompt=yes/ /home/vagrant/.bashrc
	sed -i '$ a\parse_git_branch(){' /home/vagrant/.bashrc
	sed -i '$ a\git branch 2> /dev/null | sed -e \x27/^[^*]/d\x27 -e \x27s/* \\(.*\\)/(\\1)/\x27' /home/vagrant/.bashrc
	sed -i '$ a\}' /home/vagrant/.bashrc
	sed -i '$ a\if [ \x27$color_prompt\x27 = yes ]; then' /home/vagrant/.bashrc
	sed -i '$ a\PS1=\x27${debian_chroot:+($debian_chroot)}\\[\\033[01;32m\\]\\u@\\h\\[\\033[00m\\]:\\[\\033[01;34m\\]\\w\\[\\033[01;31m\\]$(parse_git_branch)\\[\\033[00m\\]\\$ \x27' /home/vagrant/.bashrc
	sed -i '$ a\else' /home/vagrant/.bashrc
	sed -i '$ a\PS1=\x27${debian_chroot:+($debian_chroot)}\\u@\\h:\\w$(parse_git_branch)\\$ \x27' /home/vagrant/.bashrc
	sed -i '$ a\fi' /home/vagrant/.bashrc
	sed -i '$ a\unset color_prompt force_color_prompt' /home/vagrant/.bashrc
