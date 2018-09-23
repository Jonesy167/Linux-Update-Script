#!/bin/bash 

##############by JONESY167 https://github.com/Jonesy167###############################
if [[ $EUID -ne 0 ]]; then
   echo " "
   echo "NEEDS ROOT PRIVILEGES TO RUN"
   echo " "
   sleep 1
   sudo echo " "
fi


echo ' ' 
echo GETTING UPDATE
echo ' '
sleep 2
sudo -S apt-get update
echo ' '
echo PERFORMING DISTRIBUTION UPGRADE
echo ' '
sleep 2
sudo -S apt-get -y dist-upgrade
echo ' '
echo FIXING MISSING DEPENDENCIES
echo ' '
sleep 2
sudo apt-get install -fy
echo ' '
echo REMOVING OBSOLETE PACKAGES
echo ' '
sleep 2
sudo -S apt-get autoremove -fy
echo ' '
echo CLEARING CACHE
echo ' '
sleep 2
sudo -S apt-get autoclean
echo ' '
echo FINISHED, HAVE A NICE DAY
echo ' '
