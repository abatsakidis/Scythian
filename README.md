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

**OS**: Ubuntu 14.04.5 LTS on Windows 10 x86_64 <br>
**Kernel**: 3.4.0+ <br>
Packages: 714 <br>
Shell: bash 4.3.11 <br>
Terminal: /dev/tty2 <br>
CPU: Intel 2 Quad Q6600 (4) @ 2.400GHz <br>
Memory: 2690MiB / 4085MiB <br>

## Author ##

Batsakidis Athanasios<br>
Security Consultant<br>
a.batsakidis@re-think.gr
