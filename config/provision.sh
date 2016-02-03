	
	#Update Aptitude
    sudo apt-get update && sudo apt-get upgrade
	sudo apt-get install gcc build-essential module-assistant
	
	#Install Emacs and gedit
	sudo apt-get install emacs -y 
	#sudo apt-get install gedit
	
	#Install Iceweasel
	sudo apt-get install iceweasel -y
	
	#Install libreoffice
	sudo apt-get install libreoffice -y
	
	#Install git 
	sudo apt-get install git -y
	
	#Install Nginx
	sudo apt-get install nginx -y
	
	#Install postgres 9.4
	sudo apt-get install postgresql-9.4 -y
	
	#Install barebones gnome GUI
	sudo apt-get install gnome-core -y
	
	#Install full gnome (takes forever)
	# sudo apt-get install gnome -y
	
	#Install linux headers for good measure
	sudo apt-get install linux-headers-$(uname -r) -y
	
	#Install graphviz
	sudo apt-get install graphviz -y 
	
	#Permit any user to start the GUI
	sudo sed -i s/allowed_users=console/allowed_users=anybody/ /etc/X11/Xwrapper.config

	#Start GNOME3 GUI
	sudo /etc/init.d/gdm3 start
	
	#Set root user password to vagrant 
	yes vagrant | sudo passwd root
	
	#Set Superuser: vagrant user already NOPASSWD superuser
	
	#Make and populate cxgn directory
	mkdir cxgn/
	cd cxgn
	git clone https://github.com/solgenomics/sgn.git
	git clone https://github.com/solgenomics/cxgn-corelibs.git
	git clone https://github.com/solgenomics/fixture.git
	git clone https://github.com/solgenomics/Phenome.git
	git clone https://github.com/solgenomics/biosource.git
	git clone https://github.com/solgenomics/Cview.git
	git clone https://github.com/solgenomics/ITAG.git
	git clone https://github.com/solgenomics/tomato_genome.git
	git clone https://github.com/solgenomics/cassava.git
	#git clone https://github.com/solgenomics/yambase.git
	#git clone https://github.com/solgenomics/sweetpotatobase.git
	#git clone https://github.com/solgenomics/ricebase.git
	#git clone https://github.com/solgenomics/citrusgreening.git
	#git clone https://github.com/solgenomics/Tea.git
	#git clone https://github.com/solgenomics/coconut.git
	#git clone https://github.com/solgenomics/cassbase.git
	#git clone https://github.com/solgenomics/VIGS.git
	#git clone https://github.com/solgenomics/musabase.git
	#git clone https://github.com/solgenomics/potatobase.git
	
	
	#Install curl
	sudo apt-get install curl -y
	
	#Install cpanmin
	curl -L https://cpanmin.us | perl - --sudo App::cpanminus
	
	#Install Perl Modules
	sudo cpanm install Catalyst::ScriptRunner
	sudo cpanm install Catalyst::Restarter
	sudo cpanm install HTML::Mason::Interp
	sudo cpanm install Selenium::Remote::Driver
	sudo cpanm install DBI
	sudo cpanm install Hash::Merge
	sudo cpanm install DBIx::Connector
	sudo cpanm install Catalyst::Plugin::Authorization::Roles
	sudo cpanm install Bio::PrimarySeq
	sudo cpanm install Class::DBI
	sudo cpanm install Tie::UrlEncoder
	sudo cpanm install Data::BitMask
	sudo cpanm install enum
	sudo cpanm install File::NFSLock
	sudo cpanm install Class::MethodMaker
	sudo cpanm install Bio::BLAST::Database
	sudo cpanm install Catalyst::Plugin::SmartURI
	sudo cpanm install Modern::Perl
	sudo cpanm install List::Compare
	sudo cpanm install Cache::File
	sudo cpanm install Config::JFDI
	sudo cpanm install CatalystX::GlobalContext
	sudo cpanm install DBIx::Class::Schema
	sudo cpanm install Bio::Chado::Schema
	sudo cpanm install Array::Utils
	sudo cpanm install JSON::Any
	sudo cpanm install Math::Round::Var
	sudo cpanm install Catalyst::View::Email
	sudo cpanm install Catalyst::View::HTML::Mason
	sudo cpanm install Catalyst::View::Bio::SeqIO
	sudo cpanm install Catalyst::View::JavaScript::Minifier::XS
	sudo cpanm install Catalyst::View::Download::CSV
	sudo cpanm install URI::FromHash
	sudo cpanm install JSAN::ServerSide
	sudo cpanm install Config::INI::Reader
	sudo cpanm install Bio::GFF3::LowLevel
	sudo cpanm install Statistics::Descriptive
	sudo cpanm install String::Random
	sudo cpanm install MooseX::FollowPBP
	sudo apt-get install libgd2-xpm-dev -y
	sudo cpanm install GD
	sudo cpanm install Tie::Function
	sudo cpanm install Digest::Crc32
	sudo cpanm install Barcode::Code128
	sudo cpanm install Math::Base36
	sudo cpanm install Captcha::reCAPTCHA
	sudo cpanm install HTML::FormFu
	sudo cpanm install SVG
	sudo cpanm install IPC::Run3
	sudo cpanm install Spreadsheet::WriteExcel
	sudo cpanm install MooseX::Object::Pluggable
	sudo cpanm install R::YapRI::Base
	sudo cpanm install PDF::Create
	sudo cpanm install String::CRC
	sudo cpanm install Algorithm::Combinatorics
	sudo cpanm install Catalyst::Controller::HTML::FormFu
	sudo cpanm install String::Approx
	sudo apt-get install libcairo2-dev -y
	sudo cpanm install Cairo
	sudo cpanm install Chart::Clicker
	sudo cpanm install Spreadsheet::ParseExcel
	sudo cpanm install MooseX::Types::URI
	sudo cpanm install Bio::Graphics::FeatureFile --force
	sudo cpanm install Mail::Sendmail
	sudo cpanm install Array::Compare
	sudo cpanm install GD::Graph::lines
	sudo cpanm install GD::Graph::Map
	sudo cpanm install Bio::GMOD::GenericGenePage
	sudo cpanm install Number::Bytes::Human
	sudo cpanm install AnyEvent --force 
	sudo cpanm install File::Flock
	sudo cpanm install Graph 
	sudo cpanm install Bio::SeqFeature::Annotated
	sudo cpanm install XML::Twig
	sudo cpanm install XML::Generator
	sudo apt-get install libpq-dev -y 
	sudo cpanm install DBD::Pg
	sudo cpanm install MooseX::Runnable 
	sudo cpanm install XML::Feed
	sudo cpanm install Parse::Deb::Control
	sudo cpanm install Bio::GMOD::Blast::Graph
	sudo cpanm install Catalyst::DispatchType::Regex
	sudo cpanm install DateTime::Format::Flexible
	sudo cpanm install DateTime::Format::Pg
	sudo cpanm install HTML::TreeBuilder::XPath
	sudo cpanm install JSON::XS
	sudo cpanm install Lingua::EN::Inflect
	sudo cpanm install List::AllUtils
	sudo cpanm install MooseX::Declare
	sudo cpanm install MooseX::Singleton
	sudo cpanm install SOAP::Transport::HTTP
	sudo cpanm install Test::Class
	sudo cpanm install WWW::Mechanize::TreeBuilder
	sudo cpanm install Data::UUID
	sudo cpanm install HTML::Lint
	sudo cpanm install Test::JSON
	sudo cpanm install Test::MockObject
	sudo cpanm install Test::WWW::Selenium
	sudo cpanm install Sort::Versions
	
	
	sudo mkdir /export
	sudo mkdir /export/prod
	sudo mkdir /export/prod/public
	sudo mkdir /export/prod/public/sgn_static_content
	sudo mkdir /export/prod/tmp
	sudo mkdir /export/prod/tmp/solgs
	sudo mkdir /data
	sudo mkdir /data/prod 
	sudo mkdir /data/prod/archive
	
	sudo chown -R vagrant:vagrant /data/prod/
	sudo chown -R vagrant:vagrant /export/prod/
	
	#Add sgn_local.conf to sgn directory, copied from shared config directory 
	sudo cp /home/vagrant/cxgn/config/sgn_local.conf /home/vagrant/cxgn/sgn 
	sudo chown -R vagrant:vagrant /home/vagrant/cxgn/
	
	#Configure trust connection for psql postgres user and create web_usr .
	sudo sed -i s/peer/trust/ /etc/postgresql/9.4/main/pg_hba.conf 
	sudo service postgresql restart
	yes sol@ley! | createuser -U postgres -P web_usr
	
	#Create sandbox_database db and load dump from shared config folder.
	sudo -u postgres createdb -E UTF8 --locale en_US.utf8 -T template0 sandbox_database
	gunzip -c /home/vagrant/cxgn/config/database_dump.pgsql.gz | sudo psql -U postgres sandbox_database
	#Create fixture db and load fixture.sql
	sudo -u postgres createdb -E UTF8 --locale en_US.utf8 -T template0 fixture
	sudo psql -U postgres -d fixture -f /home/vagrant/cxgn/fixture/cxgn_fixture.sql
	#Apply db patches that are needed.
	#00043
	#printf '\nEise!Th9\n' | mx-run AddPublicListField -H localhost -D sandbox_cassava -u lam87@cornell.edu
	#00044
	#printf '\nEise!Th9\n' | mx-run AddJbrowseSrcField -H localhost -D sandbox_cassava -u lam87@cornell.edu
	
	
	
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
	
	#Add Perl paths 
	sudo sed -i '$ a\export PERL5LIB="$PERL5LIB:/home/vagrant/cxgn/sgn/lib:/home/vagrant/cxgn/cxgn-corelibs/lib:/home/vagrant/cxgn/Phenome/lib:/home/vagrant/cxgn/Cview/lib:/home/vagrant/cxgn/ITAG/lib:/home/vagrant/cxgn/biosource/lib:/home/vagrant/cxgn/tomato_genome/lib"' /home/vagrant/.bashrc
	
	#Install R 
	sudo sed -i "\$adeb https://cran.cnr.berkeley.edu/bin/linux/debian jessie-cran3/" /etc/apt/sources.list
	sudo apt-key adv --keyserver keys.gnupg.net --recv-key 381BA480
	sudo apt-get update
	sudo apt-get install r-base -y
	#Better performance on linear algebra ops
	sudo apt-get install libatlas3-base -y 
	#Install R Packages
	sudo apt-get install libcurl4-openssl-dev -y 
	sudo R
	install.packages('data.table', dependencies=TRUE, repos='http://cran.rstudio.com/')
	install.packages('agricolae', dependencies=TRUE, repos='http://cran.rstudio.com/')
	quit(save='no')
	
	
	#Install VirtualBox guest tools in virtualbox, by clicking Devices->Insert Guest Additions CD, then:
	#This will enable copy/paste from host to guest, guest window resizing, and other nice things
	# sudo mount /dev/sr0 /mnt
	# cd /mnt
	# sudo ./VBoxLinuxAdditions.run
	# Then restart virtualbox 