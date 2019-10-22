#!/bin/bash


sudo apt-get -qq update

sudo apt-get -qq upgrade
echo "Autoremoving unneeded dependencies..."
sudo apt-get -qq autoremove
echo "Installing dependencies..."
sudo apt-get -qq install wget htop xz-utils build-essential libtool autoconf automake software-properties-common
echo "Adding repositories..."
sudo add-apt-repository -y ppa:bitcoin/bitcoin
echo "Updating added repository lists..."
sudo apt update
echo "Installing tools..."
sudo apt-get -qq install protobuf-compiler git pkg-config aptitude
