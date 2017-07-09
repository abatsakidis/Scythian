#!/bin/bash
# Scythian Installation Script v0.1
###################################################
$OLDPWD=pwd
YELLOW='\033[1;33m'
DEFAULT='\e[39m'
#if [[ $EUID -eq 0 ]]; then
#echo "This script must not be run as root.." 1>&2
#exit 1
#fi
#if [ ! -f /etc/network/if-up.d/ntpdate ] ; then
#sudo ntpdate time.nist.gov
#fi
#sudo echo 1 > /proc/sys/net/ipv4/ip_forward
#clear
echo -n "Creating Scythian directory structure...."
if [ ! -d /scythian ] ; then
sudo mkdir /scythian
sudo chown -R $USER /scythian && chgrp -R $USER /scythian
fi
[ ! -d /scythian/temp ] && mkdir /scythian/temp
[ ! -d /scythian/backdoors ] && mkdir /scythian/backdoors
[ ! -d /scythian/wireless ] && mkdir /scythian/wireless
[ ! -d /scythian/exploits ] && mkdir /scythian/exploits
[ ! -d /scythian/exploits/exploitdb ] && mkdir /scythian/exploits/exploitdb
[ ! -d /scythian/web ] && mkdir /scythian/web
[ ! -d /scythian/scanners ] && mkdir /scythian/scanners
[ ! -d /scythian/misc ] && mkdir /scythian/misc
[ ! -d /scythian/enumeration ] && mkdir /scythian/enumeration
[ ! -d /scythian/voip ] && mkdir /scythian/voip
[ ! -d /scythian/database ] && mkdir /scythian/database
[ ! -d /scythian/passwords ] && mkdir /scythian/passwords
[ ! -d /scythian/fuzzers ] && mkdir /scythian/fuzzers
[ ! -d /scythian/spoofing ] && mkdir /scythian/spoofing
[ ! -d /scythian/cisco ] && mkdir /scythian/cisco
[ ! -d /scythian/tunneling ] && mkdir /scythian/tunneling
[ ! -d /scythian/audit ] && mkdir /scythian/audit
if [ ! -d /scythian/misc/va-pt ] ; then
cd $OLDPWD
echo "[Done]"
fi
clear
selection=
until [ "$selection" = "0" ]; do
     echo ""
     echo -e ${YELLOW}"   (                                         "
     echo "   )\ )              )    )                  "
     echo "  (()/(     (     ( /( ( /( (      )         "
     echo "   /(_)) (  )\ )  )\()))\()))\  ( /(   (     "
     echo "  (_))   )\(()/( (_))/((_)\((_) )(_))  )\ )  "
     echo "  / __| ((_))(_))| |_ | |(_)(_)((_)_  _(_/(  "
     echo "  \__ \/ _|| || ||  _|| ' \ | |/ _  || ' \)) "
     echo "  |___/\__| \_, | \__||_||_||_|\__,_||_||_|  "
     echo "            |__/                             "
     echo -e ${DEFAULT}""
     echo "The Vulnerability Assessment and Penetration Testing Toolkit"
     echo "                                            Dark Version 1.0"
     echo ""
     echo "Select your Destiny!!"
     echo "~~~~~~~~~~~~~~~~~~~~~"
     echo "1 - Install Dependencies"
     echo "2 - Install SVN Toolkits"
     echo "3 - Install Static Code Software"
     echo "4 - Install Backdoors Tools"
     echo "5 - Install/Update Exploit Code Repositories"
     echo "6 - Install/Update wordlist Repositories"
     echo "7 - Install/Update Vulnerability/Exploit Databases"
     echo "8 - Update all tool packages"
     echo "9 - Install Nesus"
     echo ""
     echo "0 - Exit program"
     echo ""
     echo -n "Enter Selection:"
     read selection
     echo ""
     case $selection in
         1 ) $OLDPWD/scripts/deps.sh;;
         2 ) $OLDPWD/scripts/svn.sh;;
         3 ) $OLDPWD/scripts/static.sh;;
         4 ) $OLDPWD/scripts/backdoors.sh;; 
         5 ) $OLDPWD/scripts/exploits.sh;;
         6 ) $OLDPWD/scripts/wordlists.sh;;
         7 ) $OLDPWD/scripts/db-update.sh;;
         8 ) $OLDPWD/scripts/update-tools.sh;;
         9 ) $OLDPWD/scripts/nessus.sh;;
         0 ) exit;;
         * ) exit;;
     esac
done
