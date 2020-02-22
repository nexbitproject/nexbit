#!/bin/bash

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install build-essential libboost-dev libboost-system-dev libboost-filesystem-dev  -y
sudo apt-get install libboost-program-options-dev libboost-thread-dev libssl-dev libminiupnpc-dev git curl zlib1g-dev -y
sudo apt-get install build-essential libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4  -y
sudo apt-get install openssl software-properties-common libffi-dev gnupg2 build-essential automake autoconf libtool  -y
sudo apt-get install libxml2 libxml2-dev zlib1g-dev python curl gzip screen doxygen graphviz libboost-all-dev  -y
sudo apt-get install libminiupnpc-dev libzmq3-dev  -y
sudo apt-get install curl zlib1g-dev build-essential libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev  -y
sudo apt-get install libxslt1-dev libcurl4-openssl-dev software-properties-common  -y
sudo apt-get install libffi-dev gnupg2 libevent-pthreads-2.1-6 libzmq3-dev  -y

sudo apt-get update

echo sleep 3

sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install libdb4.8-dev libdb4.8++-dev  -y
sudo apt-get update 
