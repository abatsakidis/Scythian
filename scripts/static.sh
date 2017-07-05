echo "Static software package installation beginning"
echo ""
#if [ ! -d /pentest/wireless/aircrack-ng ] ; then
#echo -n "Installing Aircrack Tools..."
#cd /scythian/wireless && wget http://download.aircrack-ng.org/aircrack-ng-1.1.tar.gz > /dev/null 2>&1
#tar xvf aircrack-ng-1.1.tar.gz > /dev/null 2>&1 && mv aircrack-ng-1.1 aircrack-ng
#rm -rf aircrack-ng-1.1.tar.gz
#cd aircrack-ng && cd /scythian/wireless/aircrack-ng
#echo "-------------------------------------------"
#echo "-------------------------------------------"
#echo "Modify the following"
#echo "CFLAGS          ?= -g -W -Wall -Werror -O3"
#echo "Change to:"
#echo "CFLAGS          ?= -g -W -Wall -O3"
#echo "-------------------------------------------"
#echo "-------------------------------------------"
#sleep 10
#gedit common.mak
#sleep 60
#cp /tools/common.mak /scythian/wireless/aircrack-ng
#make > /dev/null 2>&1 && sudo make install > /dev/null 2>&1
#sudo airodump-ng-oui-update > /dev/null 2>&1
#echo -e "\e[32m[Done]\e[39m"
#fi


#if [ ! -d /scythian/web/proxystrike ] ; then
#echo -n "Installing ProxyStrike..."
#cd /scythian/web/ && wget https://proxystrike.googlecode.com/files/proxystrike-2.2.tar.bz2 > /dev/null 2>&1
#bunzip2 proxystrike-2.2.tar.bz2
#tar xvf proxystrike-2.2.tar.bz2 > /dev/null 2>&1 && rm -rf proxystrike-2.2.tar.bz2 
#mv ProxyStrike-2.2 proxystrike
#echo -e "\e[32m[Done]\e[39m"
#fi

if [ ! -d /scythian/passwords/johnyy ] ; then
echo -n "Installing Johnyy..."
mkdir /scythian/passwords/johnyy
cd /scythian/passwords/johnyy && wget http://openwall.info/wiki/_media/john/johnny_1.1.3_i386.deb > /dev/null 2>&1 
sudo dpkg -i  johnny_1.1.3_i386.deb > /dev/null 2>&1 
echo -e "\e[32m[Done]\e[39m"
fi




if [ ! -d /scythian/web/dirbuster ] ; then
echo -n "Installing DirBuster..."
cd /scythian/web/ && wget "http://downloads.sourceforge.net/project/dirbuster/DirBuster%20%28jar%20%2B%20lists%29/1.0-RC1/DirBuster-1.0-RC1.tar.bz2?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fdirbuster%2Ffiles%2FDirBuster%2520%2528jar%2520%252B%2520lists%2529%2F1.0-RC1%2F&ts=1370262745&use_mirror=nchc" -O DirBuster-1.0-RC1.tar.bz2 > /dev/null 2>&1
bunzip2 DirBuster-1.0-RC1.tar.bz2 > /dev/null 2>&1 
tar xvf DirBuster-1.0-RC1.tar > /dev/null 2>&1 && rm -rf DirBuster-1.0-RC1.tar
mv DirBuster-1.0-RC1 dirbuster
echo -e "\e[32m[Done]\e[39m"
fi

echo -n "Installing SSL Strip..."
sudo apt-get install sslstrip > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"


if [ ! -d /scythian/web/websploit ] ; then
echo -n "Installing Websploit..."
cd /scythian/web/ && wget http://downloads.sourceforge.net/project/websploit/WebSploit%20Framework%20V.3.0.0/WebSploit-Framework-3.0.0.tar.gz > /dev/null 2>&1
tar zxvf WebSploit-Framework-3.0.0.tar.gz > /dev/null 2>&1 && rm -rf WebSploit-Framework-3.0.0.tar.gz 
cd websploit
sudo cp wsf-300.tar.gz /usr/share
cd /usr/share
sudo tar -xf wsf-300.tar.gz > /dev/null 2>&1
sudo chmod 755 /usr/share/websploit/*
sudo chmod 755 /usr/share/websploit/modules*
sudo chmod 755 /usr/share/websploit/modules/fakeupdate/*
sudo chmod 755 /usr/share/websploit/core/*
sudo ln -s /usr/share/websploit/websploit /usr/bin/websploit
sudo rm -rf /usr/share/wsf-300.tar.gz
echo -e "\e[32m[Done]\e[39m"
fi




if [ ! -d /scythian/scanners/webshag ] ; then
echo -n "Installing Webshag..."
mkdir /scythian/scanners/webshag
cd /scythian/scanners/webshag && wget http://www.scrt.ch/outils/webshag/ws110.tar.gz > /dev/null 2>&1
tar zxvf ws110.tar.gz > /dev/null 2>&1 && rm -rf ws110.tar.gz
echo -e "\e[32m[Done]\e[39m"
fi



if [ ! -d /scythian/scanners/snmp ] ; then
echo -n "Installing OneSixtyOne & snmpcheck..."
mkdir /scythian/scanners/snmp
cd /scythian/temp && wget http://dl.packetstormsecurity.net/UNIX/scanners/onesixtyone-0.3.tar.gz > /dev/null 2>&1
tar zxvf onesixtyone-0.3.tar.gz > /dev/null 2>&1 && rm -rf onesixtyone-0.3.tar.gz
mv onesixtyone-0.3/ /scythian/scanners/snmp/onesixtyone
cd /scythian/scanners/snmp/onesixtyone && gcc -o onesixtyone onesixtyone.c > /dev/null 2>&1
cd /scythian/scanners/snmp && wget http://www.nothink.org/perl/snmpcheck/downloads/snmpcheck-1.8.pl -O snmpcheck.pl > /dev/null 2>&1
chmod 700 /scythian/scanners/snmp/snmpcheck.pl
echo -e "\e[32m[Done]\e[39m"
fi


if [ ! -d /scythian/cisco/cge ] ; then
echo -n "Installing Cisco Global Exploiter..."
cd /scythian/temp && wget http://dl.packetstormsecurity.net/0405-exploits/cge-13.tar.gz > /dev/null 2>&1
tar zxvf cge-13.tar.gz > /dev/null 2>&1 && rm -rf cge-13.tar.gz
mv cge-13/ /scythian/cisco/cge && cd /scythian/cisco/cge
chmod 700 cge.pl && dos2unix cge.pl > /dev/null 2>&1
fi

if [ ! -f /scythian/cisco/copy-router-config.pl ] ; then
cd /scythian/cisco && wget http://littlehacker.persiangig.com/cisco/copy-router-config.pl > /dev/null 2>&1
chmod 755 copy-router-config.pl
fi
echo -e "\e[32m[Done]\e[39m"

if [ ! -d /scythian/voip/sipvicious ] ; then
echo -n "Installing SIPVicious..."
cd /scythian/temp && wget http://dl.packetstormsecurity.net/sip/sipvicious-0.2.6.tar.gz > /dev/null 2>&1
tar zxvf sipvicious-0.2.6.tar.gz > /dev/null 2>&1 && rm -rf sipvicious-0.2.6.tar.gz
mv sipvicious/ /scythian/voip/ && cd /scythian/voip/sipvicious
echo -e "\e[32m[Done]\e[39m"
fi


if [ ! -d /scythian/enumeration/hydra ] ; then
echo -n "Installing THC Hydra..."
cd /scythian/temp && wget http://www.thc.org/releases/hydra-7.5.tar.gz > /dev/null 2>&1
tar zxvf hydra-7.5.tar.gz > /dev/null 2>&1 && rm -rf hydra-7.5.tar.gz
mv hydra-7.5 /scythian/enumeration/hydra && cd /scythian/enumeration/hydra/
./configure > /dev/null 2>&1 && make > /dev/null 2>&1
sudo make install > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/web/stompy ] ; then
echo -n "Installing Stompy..."
cd /scythian/temp && wget http://dl.packetstormsecurity.net/web/stompy.tgz > /dev/null 2>&1
tar zxvf stompy.tgz > /dev/null 2>&1 && rm -rf stompy.tgz
mv stompy /scythian/web/
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/web/ratproxy ] ; then
echo -n "Installing Ratproxy..."
cd /scythian/temp && wget http://ratproxy.googlecode.com/files/ratproxy-1.58.tar.gz > /dev/null 2>&1
tar zxvf ratproxy-1.58.tar.gz > /dev/null 2>&1 && rm -rf ratproxy-1.58.tar.gz
mv ratproxy/ /scythian/web/ && cd /scythian/web/ratproxy
make > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/wireless/asleap ] ; then
echo -n "Installing asleap..."
cd /scythian/temp && wget http://prdownloads.sourceforge.net/project/asleap/asleap/asleap-1.4/asleap-1.4.tgz > /dev/null 2>&1
tar xvf asleap-1.4.tgz > /dev/null 2>&1 && rm -rf asleap-1.4.tgz
mv asleap/ /scythian/wireless/ && cd /scythian/wireless/asleap
make > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -f /scythian/wireless/eapmd5crack.py ] ; then
echo -n "Installing EAP MD5 Crack..."
cd /scythian/wireless && wget http://ptscripts.googlecode.com/svn/trunk/eapmd5crack.py > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

#if [ ! -d /pentest/voip/smap ] ; then
#echo "Installing SMAP"
#cd /pentest/temp && wget http://www.protectors.cc/blog/uploads/vapt/smap.tar.gz
#tar zxvf smap.tar.gz && rm -rf smap.tar.gz
#mv smap/ /pentest/voip/smap
#cd /pentest/voip/smap && make
#fi

if [ ! -f /scythian/database/sqlbrute.py ] ; then
echo -n "Installing SQLBrute..."
cd /scythian/database && wget http://packetstorm.foofus.com/UNIX/scanners/sqlbrute.py.txt -O sqlbrute.py > /dev/null 2>&1
cd /scythian/database && chmod 700 sqlbrute.py
fi
if [ ! -d /scythian/voip/ace ] ; then
cd /scythian/temp && wget http://prdownloads.sourceforge.net/ucsniff/ace/ace-1.10.tar.gz > /dev/null 2>&1
tar xvf ace-1.10.tar.gz > /dev/null 2>&1 && rm -rf ace-1.10.tar.gz
mv ace-1.10 /scythian/voip/ace
cd /scythian/voip/ace && make > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi


if [ ! -d /scythian/database/tnspoison ] ; then
echo -n "Installing TNS Poison..."
cd /scythian/database && mkdir tnspoison
cd tnspoison/ && wget http://www.joxeankoret.com/download/tnspoison.zip > /dev/null 2>&1
unzip tnspoison.zip > /dev/null 2>&1 && rm -rf tnspoison.zip
echo -e "\e[32m[Done]\e[39m"
fi
#if [ ! -d /pentest/voip/ucsniff ] ; then
#cd /pentest/temp && wget http://prdownloads.sourceforge.net/ucsniff/ucsniff-3.10.tar.gz
#tar xvf ucsniff-3.10.tar.gz && rm -rf ucsniff-3.10.tar.gz
#mv ucsniff-3.10 /pentest/voip/ucsniff && cd /pentest/voip/ucsniff
#libtoolize --copy --force && ./configure
#fi
#
#videosnarf pending
#
#if [ ! -d /pentest/voip/sipcrack ] ; then
#cd /pentest/temp && wget http://dl.packetstormsecurity.net/Crackers/SIPcrack-0.2.tar.gz
#tar zxvf SIPcrack-0.2.tar.gz && rm -rf SIPcrack-0.2.tar.gz
#mv SIPcrack-0.2 /pentest/voip/sipcrack && cd /pentest/voip/sipcrack 
#make
#fi
if [ ! -d /scythian/voip/enumiax ] ; then
cd /scythian/temp && wget http://prdownloads.sourceforge.net/enumiax/enumiax-1.0.tar.gz > /dev/null 2>&1
tar zxvf enumiax-1.0.tar.gz > /dev/null 2>&1 && rm -rf enumiax-1.0.tar.gz
mv enumiax-1.0 /scythian/voip/enumiax && cd /scythian/voip/enumiax
make > /dev/null 2>&1
fi

if [ ! -d /scythian/voip/rtpbreak ] ; then
echo -n "Installing RTP Break..."
cd /scythian/temp && wget http://dl.packetstormsecurity.net/sniffers/rtpbreak-1.3a.tgz > /dev/null 2>&1
tar zxvf rtpbreak-1.3a.tgz > /dev/null 2>&1 && rm -rf rtpbreak-1.3a.tgz
mv rtpbreak-1.3a /scythian/voip/rtpbreak 
cd /scythian/voip/rtpbreak && make > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/voip/voipong ] ; then
echo -n "Installing VOIPong..."
cd /scythian/temp && wget http://www.enderunix.org/voipong/voipong-2.0.tar.gz > /dev/null 2>&1
tar zxvf voipong-2.0.tar.gz > /dev/null 2>&1 && rm -rf voipong-2.0.tar.gz
mv voipong-2.0/ /scythian/voip/voipong
cd /scythian/voip/voipong
mv Makefile.linux makefile && make > /dev/null 2>&1
sudo make install > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/enumeration/thc-ipv6 ] ; then
echo -n "Installing THC IPv6..."
cd /scythian/temp && wget http://www.thc.org/releases/thc-ipv6-2.3.tar.gz > /dev/null 2>&1
tar zxvf thc-ipv6-2.3.tar.gz > /dev/null 2>&1 && rm -rf thc-ipv6-2.3.tar.gz
mv thc-ipv6-2.3 /scythian/enumeration/thc-ipv6 && cd /scythian/enumeration/thc-ipv6
make all > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

#if [ ! -d /pentest/enumeration/seat ] ; then
#echo "Installing SEAT"
#cd /pentest/temp && wget http://midnightresearch.com/common/seat/seat-0.3.tar.bz2
#bunzip2 seat-0.3.tar.bz2 &&  tar xvf seat-0.3.tar
#rm -rf seat-0.3.tar && mv seat/ /pentest/enumeration
#fi

if [ ! -d /scythian/voip/voiphopper ] ; then
echo -n "Installing VOIP Hopper..."
cd /scythian/temp && wget http://prdownloads.sourceforge.net/voiphopper/voiphopper-2.0/voiphopper-2.04.tar.gz > /dev/null 2>&1
tar zxvf voiphopper-2.04.tar.gz > /dev/null 2>&1 && rm -rf voiphopper-2.04.tar.gz
mv voiphopper-2.04 /scythian/voip/voiphopper && cd /scythian/voip/voiphopper
cd /scythian/voip/voiphopper && make > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/web/burp ] ; then
echo -n "Installing Burp Suite..."
mkdir /scythian/web/burp && cd /scythian/web/burp
wget http://portswigger.net/burp/burpsuite_free_v1.5.jar > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/enumeration/thc-pptp-bruter ] ; then
echo -n "Installing THC PPTP Bruteforcer..."
cd /scythian/temp && wget http://dl.packetstormsecurity.net/groups/thc/thc-pptp-bruter-0.1.4.tar.gz > /dev/null 2>&1
tar xvf thc-pptp-bruter-0.1.4.tar.gz > /dev/null 2>&1 && mv THC-pptp-bruter-0.1.4/ /scythian/enumeration/thc-pptp-bruter
rm -rf thc-pptp-bruter-0.1.4.tar.gz && cd /scythian/enumeration/thc-pptp-bruter/
./configure > /dev/null 2>&1 && make > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/cisco/torch ] ; then
echo -n "Installing Cisco Torch..."
cd /scythian/temp && wget http://www.hackingciscoexposed.com/tools/cisco-torch-0.4b.tar.gz > /dev/null 2>&1
tar zxvf cisco-torch-0.4b.tar.gz > /dev/null 2>&1 && rm -rf cisco-torch-0.4b.tar.gz
mv cisco-torch-0.4b /scythian/cisco/torch
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/scanners/snmp/snmpenum ] ; then
echo -n "Installing SNMPenum..."
cd /scythian/scanners/snmp && mkdir snmpenum
cd snmpenum && wget http://dl.packetstormsecurity.net/UNIX/scanners/snmpenum.zip > /dev/null 2>&1
unzip snmpenum.zip > /dev/null 2>&1 && rm -rf snmpenum.zip
chmod 700 snmpenum.pl
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/enumeration/admsnmp ] ; then
echo -n "Installing ADMsnmp..."
cd /scythian/temp && wget http://packetstorm.tacticalflex.com/groups/ADM/ADMsnmp.0.1.tgz > /dev/null 2>&1
tar zxvf ADMsnmp.0.1.tgz > /dev/null 2>&1 && rm -rf ADMsnmp.0.1.tgz
mv ADMsnmp/ /scythian/enumeration/admsnmp  && cd /scythian/enumeration/admsnmp
gcc snmp.c -o ADMsnmp > /dev/null 2>&1 && rm -rf snmp.c ADMsnmp.README
echo -e "\e[32m[Done]\e[39m"
fi

#if [ ! -d /scythian/enumeration/firewalk ] ; then
#echo -n "Installing Firewalk..."
#cd /scythian/temp && wget http://packetstormsecurity.com/files/10767/firewalk-0.99.1.tar.gz.html > /dev/null 2>&1
#tar zxvf firewalk-0.99.1.tar.gz > /dev/null 2>&1 && rm -rf firewalk.tar.gz
#mv Firewalk/ /scythian/enumeration/firewalk 
#cd /pentest/temp && git clone http://git.libssh.org/projects/libssh.git libssh 
#cd libssh/built && ./build_make.sh
#make && make install
#cd /pentest/temp && wget http://prdownloads.sourceforge.net/libdnet/libdnet-1.11.tar.gz
#tar zxvf libdnet-1.11.tar.gz && rm -rf libdnet-1.11.tar.gz
#cd libdnet-1.11/ && ./configure
#make && sudo make install
#sudo ln -s /usr/lib/libdumbnet.so /usr/lib/libdnet.so && sudo ln -s /usr/include/dumbnet.h /usr/include/dnet.h
#cd /scythian/enumeration/firewalk
#touch src/firewalk.good && touch include/firewalk.h.1
#touch include/firewalk.h.2 && touch  configure.1
#touch  configure.2 && touch configure.3
#touch  configure.4 && touch configure.5
#sed "192i\ break;" src/firewalk.c > src/firewalk.good
#rm -rf src/firewalk.c && mv src/firewalk.good src/firewalk.c
#cp SOURCE SOURCE.org
#sed "41d" SOURCE > SOURCE.1
#sed "41 i\#include <dumbnet.h>" SOURCE.1 > SOURCE.2
#rm -rf SOURCE && mv SOURCE.2 SOURCE
#rm -rf SOURCE.1 && rm -rf SOURCE.ORG
#sed "41d" include/firewalk.h > include/firewalk.h.1
#sed "41 i\#include <dumbnet.h>" include/firewalk.h.1 > include/firewalk.h.2
#rm -rf include/firewalk.h && mv include/firewalk.h.2 include/firewalk.h
#rm -rf include/firewalk.h.1
#sed "2370d" configure > configure.1
#sed '2370 i\LIBS="-ldumbnet  $LIBS"' configure.1 > configure.2
#sed "2406d" configure.2 > configure.3
#sed "2406 i\ac_cv_lib_dnet_arp_get=yes" configure.3 > configure.4
#sed "2418d" configure.4 > configure.5
#sed '2418 i\LIBS="-ldumbnet $LIBS"' configure.5 > configure.6
#rm -rf configure && mv configure.6 configure
#rm -rf configure.1 && rm -rf configure.2
#rm -rf configure.3 && rm -rf configure.4
#rm -rf configure.5 && chmod +x configure
#./configure > /dev/null 2>&1
#make > /dev/null 2>&1 && sudo make install > /dev/null 2>&1
#sudo cp man/firewalk.8 /usr/local/man/man8
#echo -e "\e[32m[Done]\e[39m"
#fi

if [ ! -d /scythian/audit/graudit ] ; then
echo -n "Installing Grep Auditing Utility..."
cd /scythian/temp && wget http://dl.packetstormsecurity.net/UNIX/security/graudit-1.9.tar.gz > /dev/null 2>&1
tar zxvf graudit-1.9.tar.gz > /dev/null 2>&1 && rm graudit-1.9.tar.gz
mv graudit-1.9/ /scythian/audit/graudit
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/audit/rats ] ; then
echo -n "Rough Auditing Tool for Security..."
cd /scythian/temp && wget https://www.fortify.com/downloads2/public/rats-2.3.tar.gz  > /dev/null 2>&1
tar zxvf rats-2.3.tar.gz > /dev/null 2>&1 && rm -rf rats-2.3.tar.gz
mv rats-2.3 /scythian/audit/rats && cd /scythian/audit/rats
./configure > /dev/null 2>&1 && make > /dev/null 2>&1
sudo make install > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/audit/nipper ] ; then
echo -n "Installing Nipper..."
cd /scythian/temp && wget http://dl.packetstormsecurity.net/cisco/nipper-0.11.7.tgz > /dev/null 2>&1
tar zxvf nipper-0.11.7.tgz > /dev/null 2>&1 && rm -rf nipper-0.11.7.tgz
mv nipper-0.11.7/ /scythian/audit/nipper
cd /scythian/audit/nipper && make > /dev/null 2>&1
sudo make install > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/audit/rat ] ; then
echo -n "Installing CIS Router Auditing Tool..."
#cd /scythian/temp && wget --no-check-certificate https://community.cisecurity.org/download/?redir=/cisco/rat-2.2-dist.sh.gz -O rat.gz > /dev/null 2>&1
#gunzip rat.gz > /dev/null 2>&1 && rm -rf rat.gz
#chmod 700 rat
#./rat > /dev/null 2>&1 && mv rat-2.2P/ /scythian/audit/rat
#rm -rf rat
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/audit/rips ] ; then
echo -n "Downloading RIPS PHP Static Source Code Analyzer..."
cd /scythian/audit && mkdir rips
cd /scythian/audit/rips && wget http://sourceforge.net/projects/rips-scanner/files/rips-0.40.zip/download -O rips.zip > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/wireless/cowpatty ] ; then
echo -n "Installing CowPatty..."
cd /scythian/temp && wget http://www.wirelessdefence.org/Contents/Files/cowpatty-4.6.tgz > /dev/null 2>&1
tar zxvf cowpatty-4.6.tgz > /dev/null 2>&1 && rm -rf cowpatty-4.6.tgz
mv cowpatty-4.6/ /scythian/wireless/cowpatty && cd /scythian/wireless/cowpatty
make > /dev/null 2>&1 && sudo make install > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/enumeration/dirbuster ] ; then
cd /scythian/temp && wget http://prdownloads.sourceforge.net/dirbuster/DirBuster-0.12.tar.bz2 > /dev/null 2>&1
bunzip2 DirBuster-0.12.tar.bz2 > /dev/null 2>&1 && tar xvf DirBuster-0.12.tar > /dev/null 2>&1
rm -rf DirBuster-0.12.tar && mv DirBuster-0.12 /scythian/enumeration/dirbuster
cd /scythian/enumeration/dirbuster
echo "java -jar DirBuster-0.12.jar" >> start-dirbuster.sh > /dev/null 2>&1 && chmod 700 start-dirbuster.sh
fi


#if [ ! -d /pentest/web/webscarab ] ; then
#echo "Installing WebScarab"
#mkdir /pentest/web/webscarab && cd /pentest/web/webscarab
#wget http://webscarab-ng.googlecode.com/files/WebScarab-ng-0.2.1.one-jar.zip && unzip WebScarab-ng-0.2.1.one-jar.zip
#rm -rf WebScarab-ng-0.2.1.one-jar.zip && chmod 700 start.sh
#dos2unix start.sh
#fi

if [ ! -f /scythian/database/mysqlaudit.py ] ; then
echo -n "Installing MySQLAudit..."
cd /scythian/database && wget http://www.darkoperator.com/tools-and-scripts/mysqlaudit.py > /dev/null 2>&1
chmod 755 mysqlaudit.py
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/passwords/john ] ; then
echo -n "Installing John the Ripper..."
cd /scythian/temp && wget http://www.openwall.com/john/g/john-1.7.9-jumbo-7.tar.gz  > /dev/null 2>&1
tar xvf john-1.7.9-jumbo-7.tar.gz > /dev/null 2>&1 && rm -rf john-1.7.9-jumbo-7.tar.gz
mv john-1.7.9-jumbo-7/ /scythian/passwords/john && cd /scythian/passwords/john/src
echo "Compiling for linux-x86-64, if this fails you will need to figure out which works on your system manually."
make linux-x86-64-native > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/passwords/cewl ] ; then
echo -n "Installing Cewl..."
cd /scythian/temp && wget http://www.digininja.org/files/cewl_4.1.tar.bz2 > /dev/null 2>&1
bunzip2 cewl_4.1.tar.bz2 > /dev/null 2>&1 && tar xvf cewl_4.1.tar  > /dev/null 2>&1
mv cewl/ /scythian/passwords/ && rm -rf cewl_4.1.tar
echo -e "\e[32m[Done]\e[39m"
fi

#if [ ! -d /pentest/enumeration/bile ] ; then
#echo "Installing Bile"
#mkdir /pentest/enumeration/bile && cd /pentest/enumeration/bile
#wget http://www.sensepost.com/cms/resources/labs/tools/misc/BiLE-suite.tgz && tar zxvf BiLE-suite.tgz
#rm -rf BiLE-suite.tgz && wget http://www.sensepost.com/cms/resources/labs/tools/misc/go.pl -O proxyscan.pl
#chmod 700 proxyscan.pl
#fi

if [ ! -d /scythian/enumeration/httprint ] ; then
echo -n "Installing HTTPrint..."
cd /scythian/temp && wget http://dl.packetstormsecurity.net/UNIX/scanners/httprint_linux_301.zip  > /dev/null 2>&1
unzip httprint_linux_301.zip > /dev/null 2>&1 && rm -rf httprint_linux_301.zip
mv httprint_301/linux /scythian/enumeration/httprint
cd /scythian/temp && rm -rf httprint_301/
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/web/xsser ] ; then
echo -n "Installing XSSer..."
cd /scythian/temp && wget http://dl.packetstormsecurity.net/UNIX/scanners/xsser_1.5-1.tar.gz > /dev/null 2>&1
tar zxvf xsser_1.5-1.tar.gz > /dev/null 2>&1 && rm -rf xsser_1.5-1.tar.gz
mv xsser-public/ /scythian/web/xsser && cd /scythian/web/xsser
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/web/skipfish ] ; then
echo -n "Installing skipfish..."
cd /scythian/web/ && wget http://skipfish.googlecode.com/files/skipfish-2.10b.tgz > /dev/null 2>&1
tar zxvf skipfish-2.10b.tgz > /dev/null 2>&1 && rm -rf skipfish-2.10b.tgz
mv skipfish-2.10b skipfish
cd skipfish && make > /dev/null 2>&1
cp /scythian/web/skipfish/dictionaries/complete.wl /scythian/web/skipfish/dictionaries/skipfish.wl
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/misc/flare ] ; then
echo -n "Installing Flare..."
cd /scythian/misc && mkdir flare
cd /scythian/misc/flare && wget http://www.nowrap.de/download/flare06linux.tgz > /dev/null 2>&1
tar xvf flare06linux.tgz > /dev/null 2>&1 && rm -rf flare06linux.tgz
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/passwords/hashcat ] ; then
echo -n "Installing oclHashcat+..."
cd /scythian/temp && wget http://hashcat.net/files/cudaHashcat-1.31.7z > /dev/null 2>&1
7za x cudaHashcat-1.31.7z > /dev/null 2>&1 && rm -rf cudaHashcat-1.31.7z
mv oclHashcat-plus-0.14 /scythian/passwords/hashcat
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/exploits/windows-tools ] ; then
echo -n "Installing Windows Tools..."
cd /scythian/exploits && mkdir windows-tools
cd windows-tools && wget http://download.sysinternals.com/files/PSTools.zip > /dev/null 2>&1
unzip PSTools.zip > /dev/null 2>&1 && rm -rf PSTools.zip
wget http://dl.packetstormsecurity.net/groups/checksum/nc.exe > /dev/null 2>&1
cd /scythian/temp && wget http://swamp.foofus.net/fizzgig/fgdump/fgdump-2.1.0-exeonly.tar.bz2 > /dev/null 2>&1
bunzip2 fgdump-2.1.0-exeonly.tar.bz2 > /dev/null 2>&1 && rm -rf fgdump-2.1.0-exeonly.tar.bz2
tar xvf fgdump-2.1.0-exeonly.tar > /dev/null 2>&1 && rm -rf fgdump-2.1.0-exeonly.tar
mv Release/fgdump.exe /scythian/exploits/windows-tools/ && rm -rf Release/
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/enumeration/ike ] ; then
echo -n "Installing VPN Tools..."
cd /scythian/temp && wget http://www.ernw.de/download/ikeprobe.zip --no-check-certificate > /dev/null 2>&1
unzip ikeprobe.zip > /dev/null 2>&1 && rm -rf ikeprobe.zip
mkdir /scythian/enumeration/ike
mv ikeprobe.exe /scythian/enumeration/ike/ && mv libeay32.dll /pentest/enumeration/ike/
cd /scythian/enumeration/ike && wget http://prdownloads.sourceforge.net/project/ikecrack/ikecrack-perl/1.00/ikecrack-snarf-1.00.pl > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/enumeration/gggooglescan ] ; then
echo -n "Installing gggooglescan..."
cd /scythian/temp && wget http://dl.packetstormsecurity.net/UNIX/scanners/gggooglescan-0.4.tar.gz > /dev/null 2>&1
tar zxvf gggooglescan-0.4.tar.gz > /dev/null 2>&1 && rm -rf gggooglescan-0.4.tar.gz
mv gggooglescan-0.4 /scythian/enumeration/gggooglescan
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/enumeration/rdp-sec-check ] ; then
echo -n "Installing RDP Security Checker..."
cd /scythian/temp && wget --no-check-certificate http://labs.portcullis.co.uk/download/rdp-sec-check-0.8.tar.gz > /dev/null 2>&1
tar xvf rdp-sec-check-0.8.tar.gz > /dev/null 2>&1 && rm -rf rdp-sec-check-0.8.tar.gz
mv rdp-sec-check-0.8 /scythian/enumeration/rdp-sec-check
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/misc/dradis ] ; then
echo -n "Installing Dradis..."
wget http://downloads.sourceforge.net/dradis/dradis-v2.9.0.tar.gz > /dev/null 2>&1
tar xvf dradis-v2.9.0.tar.gz > /dev/null 2>&1 && rm -rf dradis-v2.9.0.tar.gz
mv dradis-2.9/ /scythian/misc/dradis && cd /scythian/misc/dradis/server
sudo bundle install > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/wireless/hwk ] ; then
echo -n "Installing HWK Wireless Auditing Tool..."
cd /scythian/temp && wget http://prdownloads.sourceforge.net/project/hwk/hwk_0.3.2.tar.gz > /dev/null 2>&1
tar xvf hwk_0.3.2.tar.gz > /dev/null 2>&1 && rm -rf hwk_0.3.2.tar.gz
mv hwk_0.3.2 /scythian/wireless/hwk
cd /scythian/wireless/hwk && make  > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -f /scythian/cisco/cisc0wn.sh ] ; then
echo -n "Installing Cisco 0wn..."
cd /scythian/cisco && wget http://www.commonexploits.com/tools/cisc0wn/cisc0wn.sh > /dev/null 2>&1
chmod 755 cisc0wn.sh
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/exploits/smbexec ] ; then
echo -n "Installing smbexec..."
cd /scythian/temp && wget http://prdownloads.sourceforge.net/project/smbexec/smbexec-1.1.0.tar.gz > /dev/null 2>&1
tar xvf smbexec-1.1.0.tar.gz > /dev/null 2>&1 && rm -rf smbexec-1.1.0.tar.gz
mv smbexec /scythian/exploits
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/web/mantra ] ; then
echo -n "Installing OWASP Mantra..."
cd /scythian/temp && wget http://getmantra.googlecode.com/files/Mantra%20Lexicon%20Lin32%20EN.tar.bz2 -O MantraLexicon.tar.bz2 > /dev/null 2>&1
bunzip2 MantraLexicon.tar.bz2 > /dev/null 2>&1 && tar xvf MantraLexicon.tar > /dev/null 2>&1
rm -rf MantraLexicon.tar && mv OWASP\ Mantra\ -\ Lexicon\ -en\ 32\ bit\ Linux/ /scythian/web/mantra
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -f /scythian/enumeration/mdns.py ] ; then
echo -n "Installing mDNS Scanner..."
cd /scythian/enumeration && wget http://www.gnucitizen.org/static/blog/2008/01/mdns.py > /dev/null 2>&1
cd /scythian/temp && wget http://pybonjour.googlecode.com/files/pybonjour-1.1.1.tar.gz > /dev/null 2>&1
tar xvf pybonjour-1.1.1.tar.gz > /dev/null 2>&1 && rm -rf pybonjour-1.1.1.tar.gz
cd pybonjour-1.1.1/ && sudo python setup.py install > /dev/null 2>&1
cd /scythian/temp && sudo rm -rf pybonjour-1.1.1
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/enumeration/win-enum ] ; then
echo -n "Installing Windows Enum Tools..."
cd /scythian/temp && wget --no-check-certificate http://labs.portcullis.co.uk/download/enum4linux-0.8.8.tar.gz > /dev/null 2>&1
tar xvf enum4linux-0.8.8.tar.gz > /dev/null 2>&1 && rm -rf enum4linux-0.8.8.tar.gz
mv enum4linux-0.8.8 /scythian/enumeration/win-enum
cd /scythian/temp && wget --no-check-certificate http://labs.portcullis.co.uk/download/polenum-0.2.tar.bz2 > /dev/null 2>&1
bunzip2 polenum-0.2.tar.bz2 > /dev/null 2>&1 && tar xvf polenum-0.2.tar
rm -rf polenum-0.2.tar > /dev/null 2>&1 && sudo mv polenum-0.2/polenum.py /usr/local/bin/
sudo chmod 755 /usr/local/bin/polenum.py && rm -rf rm -rf polenum-0.2/
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -f /scythian/database/bsqlbf-v2.pl ] ; then
echo -n "Installing Blind SQL Brute Forcer..."
cd /scythian/temp && wget --no-check-certificate http://labs.portcullis.co.uk/download/bsqlbfv2.zip > /dev/null 2>&1
unzip bsqlbfv2.zip > /dev/null 2>&1 && rm -rf bsqlbfv2.zip
mv bsqlbf-v2/bsqlbf-v2.pl /scythian/database/ && rm -rf bsqlbf-v2/
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/enumeration/apache_userdir ] ; then
echo -n "Installing Apache UserDir Enumerator..."
cd /scythian/temp && wget --no-check-certificate http://labs.portcullis.co.uk/download/apache_users-2.1.tar.gz > /dev/null 2>&1
tar xvf apache_users-2.1.tar.gz > /dev/null 2>&1 && rm -rf apache_users-2.1.tar.gz
mv apache_users /scythian/enumeration/apache_userdir
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/web/aspshell ] ; then
echo -n "Installing ASPshell..."
cd /scythian/web && mkdir aspshell
cd aspshell && wget http://downloads.sourceforge.net/project/aspshell/aspshell/aspshell%200.2/aspshell-0.2.zip > /dev/null 2>&1
unzip aspshell-0.2.zip > /dev/null 2>&1 && rm -rf aspshell-0.2.zip
echo -e "\e[32m[Done]\e[39m"
fi
#if [ ! -d /pentest/enumeration/netglub ] ; then
#cd /pentest/enumeration && wget http://redmine.lab.diateam.net/attachments/download/1/netglub-1.0.tar.gz
#tar -xzvf netglub-1.0.tar.gz && rm -rf netglub-1.0.tar.gz
#mv netglub-1.0 netglub
#cd /pentest/enumeration/netglub/qng/
#qmake && make
#echo "Enter the root mysql password to create the netglub user and databases"
#mysqladmin create netglub -u root -p
#mysql -u root -p -e "grant all privileges on netglub.* to 'netglub'@'localhost' identified by 'netglub'"
#mysql -u root -p netglub < /pentest/enumeration/netglub/master/tools/sql/netglub.sql  
#cd /pentest/enumeration/netglub/master
#qmake && make
#cd tools/ && sudo ./install.sh
#cd /pentest/enumeration/netglub/slave
#qmake && make
#cd tools/ && sudo ./install.sh
#echo "When starting netglub for the first time use the code 2222-4567-89ab-cdef"
#fi
echo ""
echo "Static Code installation complete"
