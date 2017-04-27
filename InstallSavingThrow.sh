#!/bin/bash
date=`date +"%Y_%m_%d"`

#Create the directories to store definition files
mkdir -p /Library/HuskerFiles/SavingThrow/Support/
#Create the directories to store definition files
mkdir -p /Library/HuskerFiles/SavingThrow/Logs/

#Download the current SavingThrow script(s) from GitHub.
wget -c https://raw.githubusercontent.com/az1984/SavingThrow/

#Copy all shell scripts to 
cp -rv ./*.sh /Library/HuskerFiles/SavingThrow/
cp -rv ./*.py /Library/HuskerFiles/SavingThrow/
cd /Library/HuskerFiles/SavingThrow/
#python ./ATH_SavingThrow.py -v >> /Library/HuskerFiles/SavingThrow/scan_$date.log
