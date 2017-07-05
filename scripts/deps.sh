echo -n "Installing Packages..."
rm -rf /var/lib/dpkg/lock
sudo apt-get install -y wine wine-dev mysql-server mysql-client subversion git ncftp rar p7zip-full iw ethtool dos2unix gtk-recordmydesktop postgresql > /dev/null 2>&1
sudo apt-get install -y sqlite3 nbtscan dsniff uClibc++ libncurses-dev libpcap-dev libnl-dev libssl-dev hping3 openssh-server> /dev/null 2>&1
sudo apt-get intsall -y python2.6-dev autoconf open-iscsi open-iscsi-utils virtualbox-ose virtualbox-guest-additions wireshark chntpw > /dev/null 2>&1
sudo apt-get install -y webhttrack httrack finger rusers snmp reglookup gpsd gpsd-dbg libgps-dev apache2 libapache2-mod-auth-mysql > /dev/null 2>&1
sudo apt-get install -y php5-mysql libapache2-mod-php5 curl sslscan ruby rubygems libpq-dev libxml2-dev vim python-setuptools > /dev/null 2>&1
sudo apt-get install -y python-nltk python-soappy python-lxml python-svn python-scapy gtk2-engines-pixbuf graphviz python-gtksourceview2 > /dev/null 2>&1
sudo apt-get install -y libssh-dev libmysqlclient-dev libpcre3-dev Firebird2.1-dev libsvn-dev libncp-dev libidn11-dev libcurl4-gnutls-dev > /dev/null 2>&1
sudo apt-get install -y libopenssl-ruby libxslt1-dev ruby-dev sipcrack libgmp3-dev python-mysqldb libnet1-dev flasm registry-tools > /dev/null 2>&1
sudo apt-get install -y libavahi-compat-libdnssd-dev gip ldap-utils bkhive ophcrack macchanger-gtk cdpr flamerobin dsniff sipsak > /dev/null 2>&1
sudo apt-get install -y ddrescue ike-scan nfs-common httping ptunnel recover recoverdm extundelete ext3grep libaspell-dev autoconf > /dev/null 2>&1
sudo apt-get install -y libyaml-dev openjdk-7-jre openjdk-7-jre-lib libreadline-dev python2.7-dev python-pip python-beautifulsoup tshark > /dev/null 2>&1
sudo apt-get install -y openvas-server openvas-client samba libpam-smbpass > /dev/null 2>&1
sudo apt-get install -y git-core rubygems build-essential subversion > /dev/null 2>&1
sudo pip install-y pyaml > /dev/null 2>&1
sudo apt-get install -y python-pcapy > /dev/null 2>&1
sudo wget http://scapy.net/ > /dev/null 2>&1
mv index.html scapy.zip > /dev/null 2>&1
unzip scapy.zip > /dev/null 2>&1
rm -rf scapy.zip
cd scapy-2.2.0
python setup.py install > /dev/null 2>&1
cd ..
rm -rf > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"


ruby -v | grep "1.9.3" > /dev/null 2>&1
if [ $? -eq 1 ] ; then > /dev/null 2>&1
echo -n "Installing Ruby 1.9.3..."
cd /scythian/temp && wget ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p392.tar.gz > /dev/null 2>&1
tar xvf ruby-1.9.3-p392.tar.gz > /dev/null 2>&1 && rm -rf ruby-1.9.3-p392.tar.gz > /dev/null 2>&1
cd ruby-1.9.3-p392 > /dev/null 2>&1 && ./configure > /dev/null 2>&1 && make > /dev/null 2>&1 
sudo make install > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi



if [ ! -f /usr/local/bin/cpanm ] ; then > /dev/null 2>&1
echo -n "Installing CPANimus..."
cd /scythian/temp && git clone git://github.com/miyagawa/cpanminus.git > /dev/null 2>&1
cd cpanminus && perl Makefile.PL > /dev/null 2>&1
make && sudo make install > /dev/null 2>&1
cd /scythian/temp && rm -rf cpanminus/ > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi


if [ $? -eq 1 ] ; then > /dev/null 2>&1
echo -n "Installing PERL Libraries..."
cd /scythian/temp && wget http://pari.math.u-bordeaux.fr/pub/pari/unix/OLD/pari-2.1.7.tgz > /dev/null 2>&1
tar xvf pari-2.1.7.tgz && rm -rf pari-2.1.7.tgz > /dev/null 2>&1
cd pari-2.1.7/ && wget http://search.cpan.org/CPAN/authors/id/I/IL/ILYAZ/modules/Math-Pari-2.01080605.tar.gz > /dev/null 2>&1
tar xvf Math-Pari-2.01080605.tar.gz && rm -rf Math-Pari-2.01080605.tar.gz > /dev/null 2>&1
cd Math-Pari-2.01080605 && perl Makefile.PL > /dev/null 2>&1
sudo make install > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

echo -n "Checking and Installing PERL Deps..."
sudo cpanm Cisco::CopyConfig > /dev/null 2>&1
sudo cpanm Net::Telnet > /dev/null 2>&1
sudo cpanm Net::SSH::Perl > /dev/null 2>&1
sudo cpanm Net::IP > /dev/null 2>&1
sudo cpanm Net::Netmask > /dev/null 2>&1
sudo cpanm XML::Writer > /dev/null 2>&1
sudo cpanm Encoding::BER > /dev/null 2>&1
sudo cpanm Term::ANSIColor > /dev/null 2>&1
sudo cpanm Getopt::Long > /dev/null 2>&1
sudo cpanm XML::Writer > /dev/null 2>&1
sudo cpanm Socket > /dev/null 2>&1
sudo cpanm Net::Whois::IP > /dev/null 2>&1
sudo cpanm Number::Bytes::Human > /dev/null 2>&1
sudo cpanm Parallel::ForkManager > /dev/null 2>&1
sudo cpanm NetPacket::ICMP > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"

echo -n "Checking and Installing Ruby Gems..."
gem list | grep -w bundler > /dev/null 2>&1
if [ ! $? -eq 0 ] ; then > /dev/null 2>&1
sudo gem install bundler > /dev/null 2>&1
fi
gem list | grep -w spider > /dev/null 2>&1
if [ ! $? -eq 0 ] ; then > /dev/null 2>&1
sudo gem install spider > /dev/null 2>&1
fi
gem list | grep -w http_configuration > /dev/null 2>&1
if [ ! $? -eq 0 ] ; then > /dev/null 2>&1
sudo gem install http_configuration > /dev/null 2>&1
fi
gem list | grep -w mini_exiftool > /dev/null 2>&1
if [ ! $? -eq 0 ] ; then > /dev/null 2>&1
sudo gem install mini_exiftool > /dev/null 2>&1
fi
gem list | grep -w zip > /dev/null 2>&1
if [ ! $? -eq 0 ] ; then > /dev/null 2>&1
sudo gem install zip > /dev/null 2>&1
fi
gem list | grep -w pg > /dev/null 2>&1
if [ ! $? -eq 0 ] ; then > /dev/null 2>&1
sudo gem install pg > /dev/null 2>&1
fi
gem list | grep -w sqlite3 > /dev/null 2>&1
if [ ! $? -eq 0 ] ; then > /dev/null 2>&1
sudo gem install sqlite3 > /dev/null 2>&1
fi
#need to add dep checking for this, wastes time on rechecks
#gem list | grep -w 
#if [ ! $? -eq 0 ] ; then
#
#fi
#
echo -e "\e[32m[Done]\e[39m"
if [ ! -f /scythian/passwords/crunch ] ; then > /dev/null 2>&1
echo -n "Installing crunch..."
cd /scythian/passwords > /dev/null 2>&1 && wget http://dl.packetstormsecurity.net/Crack/crunch.cpp > /dev/null 2>&1
gcc -o crunch crunch.cpp -lstdc++ > /dev/null 2>&1 && rm -rf crunch.cpp  > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

echo -n "Enabling default ssl site for portal if needed..."
service='https'
if sudo lsof -i :443 | grep $service > /dev/null 2>&1
then
echo -e "\e[32m[$service is there, skipping this step]\e[39m"
else
echo -e "\e[32m[$service is not there, enabling default SSL configuration]\e[39m"
sudo a2enmod ssl > /dev/null 2>&1
sudo a2ensite ssl > /dev/null 2>&1
sudo a2enmod rewrite > /dev/null 2>&1
sudo service apache2 force-reload > /dev/null 2>&1
fi
echo -n "Updating locate database..."
sudo updatedb > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"

#if [ ! -d /opt/xplico ] ; then
#echo "Installing Xplico"
#sudo bash -c 'echo "deb http://repo.xplico.org/ $(lsb_release -s -c) main" >> /etc/apt/sources.list'
#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 791C25CE
#sudo apt-get update
#sudo apt-get install xplico
#sudo service apache2 restart
#echo "Xplico by default is now running on 9876 - http://localhost:9876"
#fi
#if [ ! -f /usr/bin/waveplay ] ; then
#echo "Installing waveplay"
#cd /pentest/temp && wget ftp://ftp.eenet.ee/pub/FreeBSD/distfiles/waveplay-20010924.tar.gz
#tar zxvf waveplay-20010924.tar.gz && cd waveplay-20010924
#make && sudo mv waveplay /usr/bin/
#sudo rm -rf /pentest/temp/waveplay*
#fi
#Oracle dependencies for metasploit, hydra, etc
#if [ ! -d /opt/oracle ] ; then
#cd /opt && mkdir oracle
#cd /pentest/temp
#wget basic-10.2.0.5.0-linux.zip && mv basic-10.2.0.5.0-linux.zip /opt/oracle
#wget sdk-10.2.0.5.0-linux.zip && mv sdk-10.2.0.5.0-linux.zip /opt/oracle
#wget sqlplus-10.2.0.5.0-linux.zip && mv sqlplus-10.2.0.5.0-linux.zip /opt/oracle
#cd /opt/oracle && unzip basic-10.2.0.5.0-linux.zip
#unzip sdk-10.2.0.5.0-linux.zip && sqlplus-10.2.0.5.0-linux.zip
#cd /pentest/temp && wget kubo-ruby-oci8-ruby-oci8-2.1.2-0-g012e146.zip
#unzip kubo-ruby-oci8-ruby-oci8-2.1.2-0-g012e146.zip && /pentest/temp/kubo-ruby-oci8-012e146
#insert remainder of the ruby/oracle crap here needed for metasploit
#metasploit oracle modules should work now
#./configure --with-oracle=/opt/oracle/instantclient_10_2/sdk/include/ --with-oracle-lib=/opt/oracle/instantclient_10_2/
#hydra segments on compile..no idea, will play with it more at some point..
#fi
