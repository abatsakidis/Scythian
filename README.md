[![Build Status](https://travis-ci.org/abatsakidis/scythian.svg?branch=master)](https://travis-ci.org/abatsakidis/scythian)

## Description ##

The set of scripts included in this package will create a Kali type environment for the performing of
Vulnerability Assessments and Penetration Testing.

The goal of this project was to allow a portable set of tools to be easily installed onto Windows 10 Linux subsystem (Ubuntu). 

## Contents of Files ##

* deps.sh - Contains the necessary software dependencies for the tools within the kit to function.
* exploits.sh - Contains the scripts to download various exploit code from public sources
* static.sh - Downloads static applications which are not svn capable
* nessus.sh - Install Nesus
* svn.sh - SVN repository scripts to checkout and update the various tools
* wordlists.sh - Contains the scripts to download the various wordlists from public sources
* update.sh - The script that makes it all happen

## How To ##

To start, run the installer: sudo ./install.sh <br>
Install the dependencies first via option 1) Install/Check Dependencies

## Author ##

Batsakidis Athanasios<br>
Security Consultant<br>
a.batsakidis@re-think.gr
