#!/bin/bash

clear
user=$(whoami)
date=$(date)
presentDiro=$(pwd)
privateIP=$(ipconfig getifaddr en0)

echo "You are currently logged in as $user."; espeak "Hi prrockzed"
printf "\n"

echo "Today's date is $date"
echo "Your present working directory is $presentDiro"
printf "\n"

sleep 2

echo "Now some Software info about Your Machine"
read -p "For detailed info type 'd' and for compact 
info type 'c': " info
printf "\n"

if [ $info = "d" ]||[ $info = "D" ]
then
system_profiler SPSoftwareDataType
else
sw_vers
printf "\n"
fi

echo "Your private or local IP Address is : $privateIP"
printf "\n"
echo "Your public or internet IP address is : $(wget -qO- http://ipecho.net/plain | xargs echo)"

sleep 1
printf "\n"

read -p "Do you want to check the space available in your system? Press 'y' for yes and 'n' for no : " space
printf "\n"

if [ $space = "y" ]||[ $info = "Y" ]
then
df -H
printf "\n"
fi

read -n 1 -s

sl
