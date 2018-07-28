#!/bin/bash 

##############by JONESY167 https://github.com/Jonesy167###############################

if [ "$EUID" -ne 0 ]
  then echo "needs root privileges to run"
fi

echo GETTING UPDATE
sleep 2
sudo -S apt-get update
echo PERFORMING DISTRIBUTION UPGRADE
sleep 2
sudo -S apt-get -y dist-upgrade
echo FIXING MISSING DEPENDENCIES
sleep 2
sudo apt-get install -fy
echo REMOVING OBSOLETE PACKAGES
sleep 2
sudo -S apt-get autoremove -fy
echo CLEARING CACHE
sleep 2
sudo -S apt-get autoclean
