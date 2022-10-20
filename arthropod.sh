#!/bin/bash

banner () 
{
    tput setaf 6
  echo '              __  __                               __ ' 
  echo '  ____ ______/ /_/ /_  _________  ____  ____  ____/ / ' 
 echo ' / __ `/ ___/ __/ __ \/ ___/ __ \/ __ \/ __ \/ __  /  ' 
echo '/ /_/ / /  / /_/ / / / /  / /_/ / /_/ / /_/ / /_/ /   '
echo '\__,_/_/   \__/_/ /_/_/   \____/ .___/\____/\__,_/    '
echo '                              /_/                     '
tput bold; echo "Author: cl4irv0yance "
tput bold; echo "Version: 1.0"
        tput sgr0
        sleep 1.025
}

banner

if [ "$1" == "" ]
then
echo "Please enter the ip in the following format: 192.168.1"

else

echo "Select what you would like to run:"
echo " 1 is for FPING"
echo " 2 is for NMAP"
read VAR

if [[ $VAR == 1 ]]
    then 
        for subnet;do 
            fping -g -r 1 $1.0/24 2>/dev/null | tee "$1".fping.txt
        done

    else [[ $Var == 2 ]]

	   for subnet; do
            sudo nmap -T4 -Pn -p 22,80,111,443,1024,2049,4440,5001,8080,8081,8082,8443,21069,40814,65535 $1.0/24 --open -oN "$1".nmap.txt
       done
    fi 
fi



