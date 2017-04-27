#!/bin/bash
#PURPOSE:   Install a modified version of the "SavingThrow" script for malware detection.
#           The original project is at "https://github.com/sheagcraig/SavingThrow"
#           Last edited by Andrew Zimmer on 04/27/2017

##
#Variables
##
#Date for date-stamping the logs
date=`date +"%Y_%m_%d"`

##
#Directories
##
#Create the directories to store definition files
mkdir -p /Library/HuskerFiles/SavingThrow/Support/
#Create the directories to store definition files
mkdir -p /Library/HuskerFiles/SavingThrow/Logs/

##
##Preparation
##
#Change to /tmp directory
cd /tmp

#Download the current SavingThrow script from GitHub.
https://raw.githubusercontent.com/az1984/SavingThrow/master/ATH_SavingThrow.py
#Download the wrapper script used for one-off scans.
https://raw.githubusercontent.com/az1984/SavingThrow/master/Run_SavingThrow.sh

#Copy all scripts to installation directory
cp -rv ./*.sh /Library/HuskerFiles/SavingThrow/
cp -rv ./*.py /Library/HuskerFiles/SavingThrow/

#Change to installation directory
cd /Library/HuskerFiles/SavingThrow/

#Make the scripts executable.
chmod a+rx *.sh
chmod a+rx *.py

##
##Perform first scan
##
The script is run with "verbose" (-v) and "remove" (-r) options
#This deletes any malware found and logs the activity to the "Logs" folder.
python ATH_SavingThrow.py -v -r >> /Library/HuskerFiles/SavingThrow/Logs/scan_$date.log
