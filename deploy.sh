#!/bin/bash

cache_dir="`dirname $0`/.cache"
 if [ -d $cache_dir ]; then
   echo "Cleaning cache directory ($cache_dir) ..."
    rm -rf $cache_dir
 fi

if [[ $# -eq 1 ]]; then
  ansible-playbook -i inventory.ini MySQL-server.yml -t $1
else
  ansible-playbook -i inventory.ini MySQL-server.yml
fi
