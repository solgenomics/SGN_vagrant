	
	#Change hostname to sgndev
	old=$(hostname)
	new="sgndev"
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
	sudo hostname sgndev
	
	#Install Iceweasel
	sudo apt-get install iceweasel -y
	
	#Install libreoffice
	sudo apt-get install libreoffice -y
	
	#Install Nginx
	sudo apt-get install nginx -y
	
	#Install slurm
	sudo apt-get install slurm-llnl -y
	#Copy slurm.conf from shared config folder to where it needs to go
	sudo cp /vagrant/sgndev_config/slurm.conf /etc/slurm-lnll/ 
	
	#Install graphviz
	sudo apt-get install graphviz -y 
	
	#Install barebones gnome GUI
	sudo apt-get install gnome-core -y
	sudo apt-get install gnome-terminal -y
	sudo apt-get install -y gnome-shell gnome-screensaver gnome-tweak-tool
	
	#Install full gnome (takes forever)
	# sudo apt-get install gnome -y
	
	#Permit any user to start the GUI
	sudo sed -i s/allowed_users=console/allowed_users=anybody/ /etc/X11/Xwrapper.config

	#Enable automatic gnome login for vagrant user
	sudo sed -i s/\#\ \ AutomaticLoginEnable\ =\ true/AutomaticLoginEnable\ =\ true/ /etc/gdm3/daemon.conf
	sudo sed -i s/\#\ \ AutomaticLogin\ =\ user1/AutomaticLogin\ =\ vagrant/ /etc/gdm3/daemon.conf
	#Start GNOME GUI
	sudo /etc/init.d/gdm3 start
	
	
	#Make and populate cxgn directory
	sudo mkdir /home/vagrant/cxgn
	cd /home/vagrant/cxgn
	git clone https://github.com/solgenomics/sgn.git
	git clone https://github.com/solgenomics/cxgn-corelibs.git
	git clone https://github.com/solgenomics/Phenome.git
	git clone https://github.com/solgenomics/biosource.git
	git clone https://github.com/solgenomics/Cview.git
	git clone https://github.com/solgenomics/ITAG.git
	git clone https://github.com/solgenomics/tomato_genome.git
	git clone https://github.com/GMOD/Chado.git
	git clone https://github.com/solgenomics/sgn-devtools.git
	git clone https://github.com/solgenomics/solGS.git
	git clone https://github.com/solgenomics/Barcode-Code128.git
	git clone https://github.com/solgenomics/Tea.git
	git clone https://github.com/solgenomics/art.git
	git clone https://github.com/solgenomics/VIGS.git
	git clone https://github.com/solgenomics/fixture.git
	
	#Mason website skins
	git clone https://github.com/solgenomics/cassava.git
	git clone https://github.com/solgenomics/yambase.git
	git clone https://github.com/solgenomics/sweetpotatobase.git
	git clone https://github.com/solgenomics/ricebase.git
	git clone https://github.com/solgenomics/citrusgreening.git
	git clone https://github.com/solgenomics/coconut.git
	git clone https://github.com/solgenomics/cassbase.git
	git clone https://github.com/solgenomics/musabase.git
	git clone https://github.com/solgenomics/potatobase.git

	
	#Install Perl Modules
	#sudo cpanm install Catalyst::ScriptRunner
	#sudo cpanm install Catalyst::Restarter
	#sudo cpanm install HTML::Mason::Interp
	#sudo cpanm install Selenium::Remote::Driver
	#sudo cpanm install DBI
	#sudo cpanm install Hash::Merge
	#sudo cpanm install DBIx::Connector
	#sudo cpanm install Catalyst::Plugin::Authorization::Roles
	#sudo cpanm install Bio::PrimarySeq
	#sudo cpanm install Class::DBI
	#sudo cpanm install Tie::UrlEncoder
	#sudo cpanm install Data::BitMask
	#sudo cpanm install enum
	#sudo cpanm install File::NFSLock
	#sudo cpanm install Class::MethodMaker
	#sudo cpanm install Bio::BLAST::Database
	#sudo cpanm install Catalyst::Plugin::SmartURI
	#sudo cpanm install Modern::Perl
	#sudo cpanm install List::Compare
	#sudo cpanm install Cache::File
	#sudo cpanm install Config::JFDI
	#sudo cpanm install CatalystX::GlobalContext
	#sudo cpanm install DBIx::Class::Schema
	#sudo cpanm install Bio::Chado::Schema
	#sudo cpanm install Array::Utils
	#sudo cpanm install JSON::Any
	#sudo cpanm install Math::Round
	#sudo cpanm install Math::Round::Var
	#sudo cpanm install Catalyst::View::Email
	#sudo cpanm install Catalyst::View::HTML::Mason
	#sudo cpanm install Catalyst::View::Bio::SeqIO
	#sudo cpanm install Catalyst::View::JavaScript::Minifier::XS@2.101001
	#sudo cpanm install Catalyst::View::Download::CSV
	#sudo cpanm install URI::FromHash
	#sudo cpanm install JSAN::ServerSide
	#sudo cpanm install Config::INI::Reader
	#sudo cpanm install Bio::GFF3::LowLevel
	#sudo cpanm install Statistics::Descriptive
	#sudo cpanm install String::Random
	#sudo cpanm install MooseX::FollowPBP
	sudo apt-get install libgd2-xpm-dev -y
	#sudo cpanm install GD
	#sudo cpanm install Tie::Function
	#sudo cpanm install Digest::Crc32
	#sudo cpanm install Barcode::Code128
	#sudo cpanm install Math::Base36
	#sudo cpanm install Captcha::reCAPTCHA
	#sudo cpanm install HTML::FormFu
	#sudo cpanm install SVG
	#sudo cpanm install IPC::Run3
	#sudo cpanm install Spreadsheet::WriteExcel
	#sudo cpanm install MooseX::Object::Pluggable
	#sudo cpanm install R::YapRI::Base
	#sudo cpanm install PDF::Create
	#sudo cpanm install String::CRC
	#sudo cpanm install Algorithm::Combinatorics
	#sudo cpanm install Catalyst::Controller::HTML::FormFu
	#sudo cpanm install String::Approx
	sudo apt-get install libcairo2-dev -y
	#sudo cpanm install Cairo
	#sudo cpanm install Chart::Clicker
	#sudo cpanm install Spreadsheet::ParseExcel
	#sudo cpanm install MooseX::Types::URI
	#sudo cpanm install Bio::Graphics::FeatureFile --force
	#sudo cpanm install Mail::Sendmail
	#sudo cpanm install Array::Compare
	#sudo cpanm install GD::Graph::lines
	#sudo cpanm install GD::Graph::Map
	#sudo cpanm install Bio::GMOD::GenericGenePage
	#sudo cpanm install Number::Bytes::Human
	#sudo cpanm install AnyEvent --force 
	#sudo cpanm install IO::Event --force
	#sudo cpanm install File::Flock
	#sudo cpanm install Graph 
	#sudo cpanm install Bio::SeqFeature::Annotated
	#sudo cpanm install XML::Twig
	#sudo cpanm install XML::Generator
	sudo apt-get install libpq-dev -y 
	#sudo cpanm install DBD::Pg
	#sudo cpanm install MooseX::Runnable 
	#sudo cpanm install XML::Feed
	#sudo cpanm install Parse::Deb::Control
	#sudo cpanm install Bio::GMOD::Blast::Graph
	#sudo cpanm install Catalyst::DispatchType::Regex
	#sudo cpanm install DateTime::Format::Flexible
	#sudo cpanm install DateTime::Format::Pg
	#sudo cpanm install HTML::TreeBuilder::XPath
	#sudo cpanm install JSON::XS
	#sudo cpanm install Lingua::EN::Inflect
	#sudo cpanm install List::AllUtils
	#sudo cpanm install MooseX::Declare
	#sudo cpanm install MooseX::Singleton
	#sudo cpanm install SOAP::Transport::HTTP
	#sudo cpanm install Test::Class
	#sudo cpanm install WWW::Mechanize::TreeBuilder
	#sudo cpanm install Data::UUID
	#sudo cpanm install HTML::Lint --force
	#sudo cpanm install Test::JSON
	#sudo cpanm install Test::MockObject
	#sudo cpanm install Test::WWW::Selenium
	#sudo cpanm install Sort::Versions
	#sudo cpanm install Term::ReadKey --force 
	#sudo cpanm install Spreadsheet::Read
	
	#Extract perl libs from vagrant shared config folder. Contains all of the sudo cpanm install commands above.
	sudo tar -xf /vagrant/sgndev_config/perl_lib.tar.gz -C /  ##/usr/local/share/perl/5.20.2/
	sudo tar -xf /vagrant/sgndev_config/perl_local_lib.tar.gz -C /  ##/usr/local/lib/x86_64-linux-gnu/perl/5.20.2/
	
	sudo mkdir /export
	sudo mkdir /export/prod
	sudo mkdir /export/prod/public
	sudo mkdir /export/prod/public/sgn_static_content
	sudo mkdir /export/prod/tmp
	sudo mkdir /export/prod/tmp/solgs
	sudo mkdir /data
	sudo mkdir /data/prod 
	sudo mkdir /data/prod/archive
	sudo mkdir /export/prod/public/images
	sudo mkdir /export/prod/public/images/image_files
	sudo mkdir /data/shared
	sudo mkdir /data/shared/tmp
	
	
	sudo chown -R vagrant:vagrant /data/prod/
	sudo chown -R vagrant:vagrant /export/prod/
	
	#Add sgn_local.conf to sgn directory, copied from shared config directory 
	sudo cp /vagrant/sgndev_config/sgn_local.conf /home/vagrant/cxgn/sgn 
	sudo chown -R vagrant:vagrant /home/vagrant/cxgn/

	#Add Perl paths 
	sudo sed -i '$ a\export PERL5LIB="$PERL5LIB:/usr/local/lib/x86_64-linux-gnu/perl/5.20.2:/usr/local/share/perl/5.20.2:/home/vagrant/cxgn/sgn/lib:/home/vagrant/cxgn/cxgn-corelibs/lib:/home/vagrant/cxgn/Phenome/lib:/home/vagrant/cxgn/Cview/lib:/home/vagrant/cxgn/ITAG/lib:/home/vagrant/cxgn/biosource/lib:/home/vagrant/cxgn/tomato_genome/lib:/home/vagrant/cxgn/Barcode-Code128/lib:/home/vagrant/cxgn/solGS/lib"' /home/vagrant/.bashrc
	
	#Install R 
	sudo apt-get install apt-transport-https -y
	sudo sed -i "\$adeb https://cran.cnr.berkeley.edu/bin/linux/debian jessie-cran3/" /etc/apt/sources.list
	sudo apt-key adv --keyserver keys.gnupg.net --recv-key 381BA480
	sudo apt-get update -y
	sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade
	sudo apt-get install r-base r-base-dev -y
	#Better performance on linear algebra ops
	sudo apt-get install libatlas3-base -y 
	sudo apt-get install libcurl4-openssl-dev -y --force-yes
	#Install R packages 
	sudo R -e "install.packages('data.table', dependencies=TRUE, repos='http://cran.rstudio.com/')"
	sudo R -e "install.packages('agricolae', dependencies=TRUE, repos='http://cran.rstudio.com/')"
	
	cd /home/vagrant/cxgn

	#Download selenium 2.45.0
	wget https://selenium-release.storage.googleapis.com/2.45/selenium-server-standalone-2.45.0.jar 
	
	#Jbrowse Setup
	sudo cp /vagrant/sgndev_config/sgn_forward /etc/nginx/sites-available/
	sudo rm /etc/nginx/sites-enabled/default
	sudo ln -s /etc/nginx/sites-available/sgn_forward /etc/nginx/sites-enabled/
	sudo /etc/init.d/nginx restart
	cd /var/www/ 
	sudo mkdir jbrowse
	cd jbrowse
	sudo curl -O http://jbrowse.org/releases/JBrowse-1.12.1.zip
	sudo unzip JBrowse-1.12.1.zip
	sudo rm JBrowse-1.12.1.zip
	cd JBrowse-1.12.1
	sudo ./setup.sh
	
	#Install Atom text editor and cleanup
	sudo apt-get install xdg-utils -y
	wget https://github.com/atom/atom/releases/download/v1.6.0/atom-amd64.deb
	sudo dpkg --install atom-amd64.deb
	sudo apt-get -f install -y
	rm atom-amd64.deb
	
	#Install Chrome and cleanup
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo dpkg --install google-chrome-stable_current_amd64.deb
	sudo apt-get -f install -y
	rm google-chrome-stable_current_amd64.deb
	