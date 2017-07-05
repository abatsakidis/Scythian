echo "Beginning subverion package installation"
if [ ! -d /scythian/wireless/giskismet ] ; then
echo -n "Installing gisKismet..."
cd /scythian/wireless && svn co https://my-svn.assembla.com/svn/giskismet/trunk giskismet > /dev/null 2>&1
cd /scythian/wireless/giskismet && sudo cpanm --installdeps . > /dev/null 2>&1
perl Makefile.PL > /dev/null 2>&1 && make > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi
if [ ! -d /scythian/wireless/wifite/ ] ; then
echo -n "Installing Wifitie..."
cd /scythian/wireless > /dev/null 2>&1 && svn checkout http://wifite.googlecode.com/svn/trunk/ wifite > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/exploits/set ] ; then
echo -n "Installing the Social Engineering Toolkit..."
cd /scythian/exploits && git clone https://github.com/trustedsec/social-engineer-toolkit/ set > /dev/null 2>&1
cd set && sudo python setup.py install > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi


if [ ! -d /scythian/exploits/framework3 ] ; then
echo -n "Installing Metasploit..."
cd /scythian/exploits && git clone https://github.com/rapid7/metasploit-framework.git framework3 > /dev/null 2>&1
sudo bundle install > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/exploits/warvox ] ; then
echo -n "Installing Warvox..."
cd /scythian/exploits && git clone https://github.com/rapid7/warvox.git > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/web/wapiti ] ; then
echo -n "Installing Wapiti..."
cd /scythian/web && svn co https://wapiti.svn.sourceforge.net/svnroot/wapiti wapiti > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/fuzzers/wfuzz ] ; then
echo -n "Installing wfuzz..."
cd /scythian/fuzzers && svn checkout http://wfuzz.googlecode.com/svn/trunk/ wfuzz > /dev/null 2>&1
cd /scythian/fuzzers/wfuzz && chmod 700 wfuzz.py
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/web/fimap ] ; then
echo -n "Installing fimap..."
cd /scythian/web && svn checkout http://fimap.googlecode.com/svn/trunk/ fimap > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/web/zap ] ; then
echo -n "Installing ZED Attack Proxy..."
cd /scythian/temp && wget http://zaproxy.googlecode.com/files/ZAP_2.1.0_Linux.tar.gz > /dev/null 2>&1
tar xvf ZAP_2.1.0_Linux.tar.gz > /dev/null 2>&1 && rm -rf ZAP_2.1.0_Linux.tar.gz > /dev/null 2>&1
mv ZAP_2.1.0/ /scythian/web/zap > /dev/null 2>&1 && cd /scythian/web && svn checkout --force http://zaproxy.googlecode.com/svn/trunk/ zap  > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/web/w3af ] ; then
echo -n "Installing w3af..."
cd /scythian/web && git clone https://github.com/andresriancho/w3af.git w3af  > /dev/null 2>&1
sudo pip install PyGithub GitPython pybloomfiltermmap esmre pdfminer futures guess-language cluster msgpack-python python-ntlm clamd xdot > /dev/null 2>&1
sudo pip install -e git+git://github.com/ramen/phply.git#egg=phply > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/web/waffit/.svn ] ; then
echo -n "Installing waffit..."
cd /scythian/web && svn checkout http://waffit.googlecode.com/svn/trunk/ waffit > /dev/null 2>&1
cd /scythian/web/waffit && chmod 700 wafw00f.py > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/fuzzers/sulley ] ; then
echo -n "Installing Sulley..."
cd /scythian/fuzzers && svn checkout http://sulley.googlecode.com/svn/trunk/ sulley > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/web/nikto ] ; then
echo -n "Installing Nikto..."
cd /scythian/web && svn co http://svn2.assembla.com/svn/Nikto_2/trunk nikto > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/web/joomscan ] ; then
echo -n "Installing Joomla Scanner..."
cd /scythian/web/ && svn co https://svn.code.sf.net/p/joomscan/code/ joomscan > /dev/null 2>&1
cd /scythian/web/joomscan/trunk && chmod 755 joomscan.pl > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/enumeration/theharvester ] ; then
echo -n "Installing the Harvester..."
cd /scythian/enumeration && svn checkout http://theharvester.googlecode.com/svn/trunk/ theharvester > /dev/null 2>&1
cd /scythian/enumeration/theharvester && chmod 755 theHarvester.py > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/web/sslyze ] ; then
echo -n "Installing the SSLyze..."
cd /scythian/web && git clone https://github.com/iSECPartners/sslyze.git > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /var/www/beef/.git/ ] ; then
echo -n "Installing Beef..."
cd /var/www && sudo git clone https://github.com/beefproject/beef.git > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/enumeration/fierce2 ] ; then
echo -n "Installing Fierce2..."
cd /scythian/enumeration && svn co https://svn.assembla.com/svn/fierce/fierce2/trunk/ fierce2 > /dev/null 2>&1
cd fierce2 && sudo cpanm --installdeps . > /dev/null 2>&1
perl Makefile.PL > /dev/null 2>&1 && make > /dev/null 2>&1
sudo make install > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/wireless/kismet ] ; then
echo -n "Installing Kismet..."
cd /scythian/wireless && git clone https://www.kismetwireless.net/kismet.git > /dev/null 2>&1
cd /scythian/wireless/kismet > /dev/null 2>&1
./configure > /dev/null 2>&1 && make dep > /dev/null 2>&1
make  > /dev/null 2>&1 && sudo make install > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

#if [ ! -d /pentest/wireless/airgraph-ng ] ; then
#cd /pentest/wireless && svn co http://trac.aircrack-ng.org/svn/trunk/scripts/airgraph-ng airgraph-ng
#cd /pentest/wireless/airgraph-ng && chmod 755 airgraph-ng
#fi

if [ ! -d /scythian/wireless/reaver ] ; then
echo -n "Installing Reaver..."
cd /scythian/wireless && svn checkout http://reaver-wps.googlecode.com/svn/trunk/ reaver > /dev/null 2>&1
cd /scythian/wireless/reaver/src && ./configure > /dev/null 2>&1
make > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/web/captcha-breaker ] ; then
echo -n "Installing Captcha Breaker..."
cd /scythian/web && svn checkout http://captcha-breaker.googlecode.com/svn/trunk/ captcha-breaker > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/enumeration/dnsmap ] ; then
echo -n "Installing DNSMap..."
cd /scythian/enumeration && svn checkout http://dnsmap.googlecode.com/svn/trunk/ dnsmap > /dev/null 2>&1
cd /scythian/enumeration/dnsmap && gcc -o dnsmap dnsmap.c > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/database/sqlmap ] ; then
echo -n "Installing SQL Map..."
cd /scythian/database && git clone https://github.com/sqlmapproject/sqlmap.git > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/database/sqlninja ] ; then
echo -n "Installing SQL Ninja..."
cd /scythian/database && svn co https://sqlninja.svn.sourceforge.net/svnroot/sqlninja sqlninja > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/web/laudanum ] ; then
echo -n "Installing Laudanum..."
cd /scythian/web && svn co https://laudanum.svn.sourceforge.net/svnroot/laudanum laudanum > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/fuzzers/fuzzdb ] ; then
echo -n "Installing FuzzDB..."
cd /scythian/fuzzers && svn checkout http://fuzzdb.googlecode.com/svn/trunk/ fuzzdb > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/enumeration/monkeyfist ] ; then
echo -n "Installing MonkeyFist..."
cd /scythian/enumeration && svn checkout http://monkeyfist.googlecode.com/svn/trunk/ monkeyfist > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/fuzzers/jbrofuzz ] ; then
echo -n "Installing JBroFuzz..."
cd /scythian/fuzzers && svn co https://svn.code.sf.net/p/jbrofuzz/code/ jbrofuzz > /dev/null 2>&1
cd /scythian/fuzzers/jbrofuzz/jar && chmod 700 jbrofuzz.sh > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/web/phpshell ] ; then
echo -n "Installing PHP Shell..."
cd /scythian/web && svn co https://phpshell.svn.sourceforge.net/svnroot/phpshell phpshell > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/web/htshells ] ; then
echo -n "Installing htshells..."
cd /scythian/web && git clone git://github.com/wireghoul/htshells.git > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/enumeration/dnsenum ] ; then
echo -n "Installing DNSenum..."
cd /scythian/enumeration && svn checkout http://dnsenum.googlecode.com/svn/trunk/ dnsenum > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/fuzzers/wsfuzzer ] ; then
echo -n "Installing WSFuzzer..."
cd /scythian/fuzzers && svn co https://wsfuzzer.svn.sourceforge.net/svnroot/wsfuzzer wsfuzzer > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi
if [ ! -d /scythian/passwords/pyrit ] ; then
echo -n "Installing Pyrit..."
cd /scythian/passwords && svn co http://pyrit.googlecode.com/svn/trunk/ pyrit > /dev/null 2>&1
cd /scythian/passwords/pyrit/pyrit && python setup.py build  > /dev/null 2>&1
sudo python setup.py install > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/exploits/middler ] ; then
echo -n "Installing Middler..."
cd /scythian/exploits && svn checkout http://middler.googlecode.com/svn/trunk/ middler > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/exploits/keimpx ] ; then
echo -n "Installing keimpx..."
cd /scythian/exploits && svn checkout http://keimpx.googlecode.com/svn/trunk/ keimpx > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/audit/routerdefense ] ; then
echo -n "Installing Router Defense..."
cd /scythian/audit && svn checkout http://routerdefense.googlecode.com/svn/trunk/ routerdefense > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/web/wpscan ] ; then
echo -n "Installing Wordpress Scanner..."
cd /scythian/web && git clone https://github.com/wpscanteam/wpscan.git > /dev/null 2>&1
sudo bundle install --without test development > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -f /usr/local/bin/smbclient.py ] ; then
echo -n "Installing Impacket..."
cd /scythian/temp && svn checkout http://impacket.googlecode.com/svn/trunk/ impacket > /dev/null 2>&1
cd impacket && sudo python setup.py install > /dev/null 2>&1
cd /scythian/temp && sudo rm -rf impacket > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/web/WhatWeb ] ; then
echo -n "Installing WhatWeb..."
cd /scythian/web && git clone git://github.com/urbanadventurer/WhatWeb.git > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

#if [ ! -d /pentest/misc/redmine ] ; then
#echo "Installing Redmine"
#cd /pentest/misc && svn co http://redmine.rubyforge.org/svn/branches/1.2-stable redmine
#echo "Enter the root mysql password to create the redmine database and user"
#mysql -u root -p -e "create database redmine character set utf8;"
#mysql -u root -p -e "grant all privileges on redmine.* to 'redmine'@'localhost' identified by 'redminelocal';"
#cd /pentest/misc/redmine && cp config/database.yml.example config/database.yml
#echo ""
#echo "enter the correct username/password for the redmine install in config/database.yml before attempting start"
#echo "If this fails make sure require 'rake/dsl_definition' is in the Rakefile ands you setup database.yml"
#echo "Once you have entered the correct user/pass migrate the db rake db:migrate RAILS_ENV="production""
#fi

if [ ! -d /scythian/scanners/nmap ] ; then
echo -n "Installing and compiling nmap..."
cd /scythian/scanners && svn co https://svn.nmap.org/nmap nmap > /dev/null 2>&1
cd /scythian/scanners/nmap && ./configure > /dev/null 2>&1
make > /dev/null 2>&1 && sudo make install > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/scanners/ncrack ] ; then
echo -n "Installing and compiling ncrack..."
cd /scythian/scanners && svn co https://svn.nmap.org/ncrack ncrack > /dev/null 2>&1
cd /scythian/scanners/ncrack && ./configure > /dev/null 2>&1
make > /dev/null 2>&1 && sudo make install > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/passwords/ntlmsspparse ] ; then
echo -n "Installing NTLMS Parse..."
cd /scythian/passwords && git clone https://github.com/psychomario/ntlmsspparse.git > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/enumeration/ptscripts ] ; then
echo -n "Installing recon-ng..."
cd /scythian/enumeration && svn checkout http://ptscripts.googlecode.com/svn/trunk/ ptscripts > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/exploits/Responder ] ; then
echo -n "Installing Spiderlabs Resonder..."
cd /scythian/exploits/ && git clone https://github.com/SpiderLabs/Responder.git > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/enumeration/ike/groupenum ] ; then
echo -n "Installing Spiderlabs groupenum..."
cd /scythian/enumeration/ && git clone https://github.com/SpiderLabs/groupenum.git > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/web/watobo ] ; then
echo -n "Installing Watobo..."
cd /scythian/web/ && svn checkout http://svn.code.sf.net/p/watobo/code/ watobo > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

# install Vuln Portal
if [ ! -d /var/www/search ] ; then
echo -n "Installing Vulnerability Database Portal..."
cd /var/www/ && sudo svn co http://va-pt.googlecode.com/svn/trunk/search search > /dev/null 2>&1
echo -e "\e[32m[Done - http://localhost/search/]\e[39m"
fi

#if [ ! -d /var/www/portal ] ; then
#echo "Installing the VA-PT Portal..."
#cd /var/www/ && sudo svn checkout https://va-pt.googlecode.com/svn/trunk/portal portal > /dev/null 2>&1
#echo "[*] Creating necessary database and structure, enter the root mysql password..."
#mysqladmin create application -u root -p && mysql -u root -p -e "grant all privileges on application.* to 'vapt'@'localhost' IDENTIFIED BY 'vapt';" > /dev/null 2>&1
#echo "[*] Adding default user account - vapt/vapt..."
#echo "[*] The VA-PT Portal is now available at http://localhost/portal"
#fi

echo -n "Installing local tools..."
cp /scythian/misc/va-pt/tools/copy-router-config.pl /scythian/cisco/ > /dev/null 2>&1
cp /scythian/misc/va-pt/tools/merge-router-config.pl /scythian/cisco/ > /dev/null 2>&1
cp /scythian/misc/va-pt/tools/dnsrecon.rb /scythian/enumeration/ > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo ""
echo "Subversion package installation complete"
