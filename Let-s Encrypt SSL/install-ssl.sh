#!/bin/bash

letsencryptbin=/opt/letsencrypt/

if [ -d "$letsencryptbin" ]; then
  echo "Let's encrypt is already installed on your system, please run the script with -add argument"
  exit
fi

git clone https://github.com/letsencrypt/letsencrypt /opt/letsencrypt
