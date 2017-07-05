echo "Backdoor software package installation beginning"
echo ""

if [ ! -d /scythian/backdoors/weevely ] ; then
echo -n "Installing Weevely..."
cd /scythian/backdoors/ && git clone https://github.com/epinna/Weevely Weevely > /dev/null 2>&1 
echo -e "\e[32m[Done]\e[39m"
fi

if [ ! -d /scythian/backdoors/cymothoa ] ; then
echo -n "Installing Cymothoa..."
cd /scythian/backdoors/ && wget http://download2.polytechnic.edu.na/pub4/sourceforge/c/cy/cymothoa/cymothoa-1-beta/cymothoa-1-beta.tar.gz > /dev/null 2>&1
tar xfvz  cymothoa-1-beta.tar.gz > /dev/null 2>&1
rm -rf cymothoa-1-beta.tar.gz 
mv cymothoa-1-beta cymothoa
cd cymothoa 
make  > /dev/null 2>&1
echo -e "\e[32m[Done]\e[39m"
fi


if [ ! -d /scythian/backdoors/openssh/openssh6.7p1 ] ; then
echo -n "Installing OpenSSH 6.7p1 Backdoor..."
mkdir /scythian/backdoors/openssh/
cd /scythian/backdoors/openssh/ && wget http://dl.packetstormsecurity.net/UNIX/penetration/rootkits/bl0wsshd00r67p1.tar.gz > /dev/null 2>&1
tar xfvz bl0wsshd00r67p1.tar.gz > /dev/null 2>&1
rm -rf bl0wsshd00r67p1.tar.gz 
mv bl0wsshd00r67p1 openssh6.7p1
cd openssh6.7p1
chmod +x setup.sh
echo -e "\e[32m[Done]\e[39m"
fi


echo ""
echo "Backdoor Software installion complete"
