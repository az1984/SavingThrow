#!/bin/bash
#PURPOSE:   Runs the "SavingThrow" script for malware detection.
#           This is an abbreviated version of "Install_SavingThrow.sh" which is used after the script is installed.
#           The original project is at "https://github.com/sheagcraig/SavingThrow"
#           Last edited by Andrew Zimmer on 04/27/2017

##
#Variables
##
#Date for date-stamping the logs
date=`date +"%Y_%m_%d"`

##
##Perform first scan
##
#Change to installation directory
cd /Library/HuskerFiles/SavingThrow/

#The script is run with "verbose" (-v) and "remove" (-r) options
#This deletes any malware found and logs the activity to the "Logs" folder.
python ATH_SavingThrow.py -v -r >> /Library/HuskerFiles/SavingThrow/Logs/scan_$date.log
