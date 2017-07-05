echo "Beginning package updates"
echo ""
echo -n "Updating gisKismet..."
cd /scythian/wireless/giskismet && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"

echo -n "Updating SET..."
cd /scythian/exploits/set && git pull > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"

echo -n "Updating Metasploit..."
cd /scythin/exploits/framework3 && git pull > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating Wapiti..."
cd /scythian/web/wapiti && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating ZED Attack Proxy..."
cd /scythian/web/zap && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating w3af..."
cd /scythian/web/w3af && git pull > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m" 
echo -n "Updating waffit..."
cd /scythian/web/waffit && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating Sulley..."
cd /scythian/fuzzers/sulley && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating Nikto..."
cd /scythian/web/nikto && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating The Harvester..."
cd /scythian/enumeration/theharvester && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating htshells..."
cd /scythian/web/htshells && git pull > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating SSLyze..."
cd /scythian/web/sslyze && git pull > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating WPScanner..." 
cd /scythian/web/wpscan && git pull > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
#echo -n "Updating Dradis..."
#cd /scythian/misc/dradis && svn up
echo -n "Updating wfuzz..."
cd /scythian/fuzzers/wfuzz && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
#echo -n "Updating Beef..."
#cd /var/www/beef && git pull
echo -n "Updating Fierce2..."
cd /scythian/enumeration/fierce2 && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating Kismet..."
cd /scythian/wireless/kismet && git pull > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
#echo "Updating Aircrack Tools"
#cd /scythian/wireless/aircrack-ng && svn up
#echo "Updating Airgraph-NG"
#cd /scythian/wireless/airgraph-ng && svn up
echo -n "Updating fimap..."
cd /scythian/web/fimap && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating SQL Map..."
cd /scythian/database/sqlmap && git pull > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updatign FuzzDB..."
cd /scythian/fuzzers/fuzzdb && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating Monkeyfist..."
cd /scythian/enumeration/monkeyfist && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating WSFuzzer..."
cd /scythian/fuzzers/wsfuzzer && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating Captcha Breaker..."
cd /scythian/web/captcha-breaker && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating DNSMap..."
cd /scythian/enumeration/dnsmap && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating SQLNinja..."
cd /scythian/database/sqlninja && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating Laudanum..."
cd /scythian/web/laudanum && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating JBroFuzz..."
cd /scythian/fuzzers/jbrofuzz && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating PHP Shell..."
cd /scythian/web/phpshell && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating DNS Enum..."
cd /scythian/enumeration/dnsenum && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating Pyrit..."
cd /scythian/passwords/pyrit && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating Middler..."
cd /scythian/exploits/middler && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating keimpx..."
cd /scythian/exploits/keimpx && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating SIPVicious..."
cd /scythian/voip/sipvicious/ && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating Router Defense..."
cd /scythian/audit/routerdefense/ && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating Wifite..."
cd /scythian/wireless/wifite && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating nmap - you will need to recompile if needed..."
cd /scythian/scanners/nmap && svn up > /dev/null 2>&1
sudo nmap --script-updatedb > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating ncat - you will need to recompile if needed..."
cd /scythian/scanners/nmap/ncat && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating ncrack - you will need to recompile if needed..."
cd /scythian/scanners/ncrack && svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"

#echo -n "Updating VA-PT..."
#cd /scythian/misc/va-pt && svn up > /dev/null 2>&1
#echo -e "\e[32m[Done]\e[39m"

echo -n "Updating the Vulnerability Database Portal..."
cd /var/www/search && sudo svn up > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating Warvox..."
cd /scythian/exploits/warvox && git pull > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating WhatWeb..."
cd /scythian/web/WhatWeb && git pull > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
echo -n "Updating Responder..."
cd /scythian/exploits/Responder && git pull > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
if [ -f /usr/sbin/openvas-nvt-sync ] ; then
echo -n "Updating OpenVAS..."
sudo /usr/sbin/openvas-nvt-sync --wget > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
else
echo "OpenVAS is not installed, skipping"
fi
if [ -f /opt/nessus/sbin/nessus-update-plugins ] ; then
echo -n "Updating Nessus Plugins..."
sudo /opt/nessus/sbin/nessus-update-plugins > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
else
echo "Nessus is not installed, skipping"
fi
/scythian/web/skipfish/skipfish -h | grep "version"
if [ $? != "2.10b" ] ; then
echo "skipfish is up to date"
else
echo "skipfish is not up to date, updating now."
rm -rf /scythian/web/skipfish && /scythian/misc/va-pt/scripts/static.sh > /dev/null 2>&1
fi
/scythian/passwords/john/run/john | grep "version"
if [ $? != "1.7.9-jumbo-7" ] ; then
echo "john the ripper is up to date"
else
echo "john the ripper is not up to date, updating now."
rm -rf /scythian/passwords/john && /scythian/misc/va-pt/scripts/static.sh > /dev/null 2>&1
fi
/usr/local/bin/hydra | grep "v7.5"
if [ $? -eq 0 ] ; then
echo "THC Hydra is up to date"
else
echo "THC Hydra is not up to date, updating now."
rm -rf /scythian/enumeration/hydra && /scythian/misc/va-pt/scripts/static.sh > /dev/null 2>&1
fi
/scythian/enumeration/thc-ipv6/thcping6 | grep "v2.3" > /dev/null 2>&1
if [ $? -eq 0 ] ; then
echo "THC IPv6 Attack Suite is up to date"
else
echo "THC IPv6 Attack Suite is not up to date, updating now"
rm -rf /scythian/enumeration/thc-ipv6 && /scythian/misc/va-pt/scripts/static.sh > /dev/null 2>&1
fi
echo -n "Downloading latest ExploitDB archive..."
cd /scythian/temp && wget http://www.exploit-db.com/archive.tar.bz2 > /dev/null 2>&1
bunzip2 archive.tar.bz2 > /dev/null 2>&1 && tar xvf archive.tar > /dev/null 2>&1
if [ -f files.csv ] ; then
echo "ExploitDB Download Complete - Moving contents to /pentest/exploits/exploitdb "
rm -rf /scythian/exploits/exploitdb && mkdir /scythian/exploits/exploitdb
mv platforms/ /scythian/exploits/exploitdb/ && mv files.csv /scythian/exploits/exploitdb/
rm -rf archive.tar && sudo chmod -R 755 /scythian/exploits/exploitdb
else
echo "ExploitDB Update Failed - Repo appears to be down"
fi
#
while true; do
    read -p "Do you want to update the local exploit database? (y/n)" yn
    case $yn in
        [Yy]* ) /scythian/misc/va-pt/scripts/db-update.sh;  break;;
        [Nn]* ) echo "Exiting the updater."; exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
