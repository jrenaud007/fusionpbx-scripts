#!/bin/bash

#Let's encrypt binaries location 
letsencryptbin=/opt/letsencrypt/

echo Please enter you domain name
read $domainname

read -p "is $domainname correct ? (y/n)?" choice
case "$choice" in 
  y|Y ) echo "yes";;
  n|N ) echo "no";;
  * ) echo "invalid";;
esac

if [ -d "$letsencryptbin" ]; then
  echo "Let's encrypt is already installed on your system, please run the script with -add argument"
  exit
fi

git clone https://github.com/letsencrypt/letsencrypt /opt/letsencrypt

cd /opt/letsencrypt
chmod a+x /opt/letsencrypt/certbot-auto
./certbot-auto
cd /etc/letsencrypt/
mkdir -p configs
cd configs
