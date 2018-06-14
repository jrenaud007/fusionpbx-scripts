#!/bin/bash

$DIRECTORY=/opt/letsencrypt/

if [ -d "$DIRECTORY" ]; then
  echo "Let's encrypt is already installed on your system, please run the good script"
  exit
fi

git clone https://github.com/letsencrypt/letsencrypt /opt/letsencrypt
