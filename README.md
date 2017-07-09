[![Build Status](https://travis-ci.org/abatsakidis/scythian.svg?branch=master)](https://travis-ci.org/abatsakidis/scythian)

## Description ##

The set of scripts included in this package will create a Kali type environment for the performing of
Vulnerability Assessments and Penetration Testing.

The goal of this project was to allow a portable set of tools to be easily installed onto Windows 10 Linux subsystem (Ubuntu). 

## Contents of Files ##

* deps.sh - Contains the necessary software dependencies for the tools within the kit to function.
* exploits.sh - Contains the scripts to download various exploit code from public sources
* static.sh - Downloads static applications which are not svn capable
* nessus.sh - Install Nessus
* svn.sh - SVN repository scripts to checkout and update the various tools
* wordlists.sh - Contains the scripts to download the various wordlists from public sources
* update.sh - The script that makes it all happen

## How To ##

To start, run the installer: sudo ./install.sh <br>
Install the dependencies first via option 1) Install/Check Dependencies

## Tested on ##

            .-/+oossssoo+/-.               theB0x@DESKTOP-9V05VK0</br>
        `:+ssssssssssssssssss+:`           ----------------------</br>
      -+ssssssssssssssssssyyssss+-         OS: Ubuntu 14.04.5 LTS on Windows 10 x86_64</br>
    .ossssssssssssssssssdMMMNysssso.       Kernel: 3.4.0+<br>
   /ssssssssssshdmmNNmmyNMMMMhssssss/      Uptime: 7 hours, 26 mins<br>
  +ssssssssshmydMMMMMMMNddddyssssssss+     Packages: 714<br>
 /sssssssshNMMMyhhyyyyhmNMMMNhssssssss/    Shell: bash 4.3.11<br>
.ssssssssdMMMNhsssssssssshNMMMdssssssss.   Terminal: /dev/tty2<br>
+sssshhhyNMMNyssssssssssssyNMMMysssssss+   CPU: Intel 2 Quad Q6600 (4) @ 2.400GHz<br>
ossyNMMMNyMMhsssssssssssssshmmmhssssssso   Memory: 2690MiB / 4085MiB<br>
ossyNMMMNyMMhsssssssssssssshmmmhssssssso<br>
+sssshhhyNMMNyssssssssssssyNMMMysssssss+<br>
.ssssssssdMMMNhsssssssssshNMMMdssssssss.<br>
 /sssssssshNMMMyhhyyyyhdNMMMNhssssssss/<br>
  +sssssssssdmydMMMMMMMMddddyssssssss+<br>
   /ssssssssssshdmNNNNmyNMMMMhssssss/<br>
    .ossssssssssssssssssdMMMNysssso.<br>
      -+sssssssssssssssssyyyssss+-<br>
        `:+ssssssssssssssssss+:`<br>
            .-/+oossssoo+/-.<br>
<br>
## Author ##

Batsakidis Athanasios<br>
Security Consultant<br>
a.batsakidis@re-think.gr
