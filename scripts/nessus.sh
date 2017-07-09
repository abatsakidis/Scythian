#if [ ! -d /scythian/scanners/nessus ] ; then
echo "Installing Nessus Scanner..."
mkdir /scythian/scanners/nessus
echo -ne "[\033[31mX\e[39m] Where is Nessus  .deb file (ex. /root/Nessus-6.10.8-ubuntu910_i386.deb) :"
read nessus
cp $nessus /scythian/scanners/nessus/ 
cd /scythian/scanners/nessus
sudo dpkg -i Nessus*  > /dev/null 2>&1
echo ""
echo -e "[\e[32m*\e[39m] You can start nessusd by typing /etc/init.d/nessusd start"
echo -e "[\e[32m*\e[39m] Then go to https://localhost:8834/ to configure your scanner"

echo -e "\e[32m[Done]\e[39m"
#fi

