
	#Change hostname to dbdev
	old=$(hostname)
	new="dbdev"
	for file in \
	   /etc/exim4/update-exim4.conf.conf \
	   /etc/printcap \
	   /etc/hostname \
	   /etc/hosts \
	   /etc/ssh/ssh_host_rsa_key.pub \
	   /etc/ssh/ssh_host_dsa_key.pub \
	   /etc/motd \
	   /etc/ssmtp/ssmtp.conf
	do
	   sudo [ -f $file ] && sudo sed -i.old -e "s:$old:$new:g" $file
	done
	sudo hostname dbdev
	
	#Make and populate cxgn directory
	sudo mkdir /home/vagrant/cxgn
	cd /home/vagrant/cxgn
	git clone https://github.com/solgenomics/fixture.git
	
	#Configure trust connection for psql postgres user and create web_usr .
	sudo sed -i s/peer/trust/ /etc/postgresql/9.5/main/pg_hba.conf 
	sudo sed -i '$ a\host all web_usr 192.168.33.10/24 md5' /etc/postgresql/9.5/main/pg_hba.conf 
	sudo sed -i s/\#listen_addresses\ =\ \'localhost\'/listen_addresses\ =\ \'\*\'/ /etc/postgresql/9.5/main/postgresql.conf
	sudo /etc/init.d/postgresql restart
	#Create web_usr role
	yes sol@ley! | createuser -U postgres -P web_usr
	#Change postgres role password
	echo "ALTER ROLE postgres WITH PASSWORD 'sgn_test';" | psql -U postgres 
	sudo /etc/init.d/postgresql restart
	
	#Create sandbox_cassava db and load dump from shared config folder.
	sudo -u postgres createdb -E UTF8 --locale en_US.utf8 -T template0 sandbox_cassava
	gunzip -c /vagrant/dbdev_config/sandbox_cassava.pgsql.gz | sudo psql -U postgres sandbox_cassava
	
	#Create fixture db and load fixture.sql
	sudo -u postgres createdb -E UTF8 --locale en_US.utf8 -T template0 fixture
	sudo psql -U postgres -d fixture -f /home/vagrant/cxgn/fixture/cxgn_fixture.sql

	#Firewall
	#sudo iptables -A INPUT -p tcp -s 0/0 --sport 1024:65535 -d 192.168.33.20  --dport 5432 -m state --state NEW,ESTABLISHED -j ACCEPT
	#sudo iptables -A OUTPUT -p tcp -s 192.168.33.20 --sport 5432 -d 0/0 --dport 1024:65535 -m state --state ESTABLISHED -j ACCEPT
	
	