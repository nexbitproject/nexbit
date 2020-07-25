NEXBIT Core integration/staging repository
=====================================

[![Build Status](https://travis-ci.org/nexbitproject/NEXBIT.svg?branch=master)](https://travis-ci.org/nexbitroject/nexbit) [![GitHub version](https://badge.fury.io/gh/nexbitroject%2Fnexbit.svg)](https://badge.fury.io/gh/nexbitproject%2Fnexbit)

## [Nexbit Chain | A Blockchain Initiative from NEXBIT.IO](https://nexbit.io)

  <a href="https://nexbit.io">
    <img src="https://raw.githubusercontent.com/nexbitproject/nexbit/master/src/qt/res/images/nexbit-intro.png" alt="NEXBIT Intro" />
  </a><br />

## To resolve sync issue for new users:
*****************************************
## How to use bootstrap.zip
```
    Download bootstrap.zip file from https://github.com/nexbitproject/nexbit/releases/download/v5.1.4/bootstrap.zip.
    Move bootstrap.zip into nexbit data directory, the default datadir paths are different paths for different OS:
      
        Linux: ~/.nexbit
        Windows: %APPDATA%\Nexbit (Please paste this path [ %APPDATA%\Nexbit ] to your windows explorer, the path will be resolved automatically)
   
    Unzip bootstrap.zip file on that folder.
    Restart wallet and wait for reindexing.

```

### BLOCK EXPLORER : https://explorer.nexbit.io   or  https://nbcportal.pro
***************************

### Dependencies for Linux users


```
sudo apt-get -qq update
sudo apt-get -qq upgrade
sudo apt-get -qq autoremove
sudo apt-get -qq install wget htop xz-utils build-essential libtool autoconf automake software-properties-common
sudo apt-get -qq install protobuf-compiler git pkg-config aptitude
sudo apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils git cmake libboost-all-dev libgmp3-dev
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install libdb4.8-dev libdb4.8++-dev
sudo apt-get install libdb5.3++-dev
sudo apt-get install libminiupnpc-dev

```



### For linux dependencies can run below scripts;

```
wget https://raw.githubusercontent.com/nexbitproject/nexbit/master/script/deps.sh && sh deps.sh

```



```
                                      NEXBIT Chain(NBC)
                                  (c) 2018-2020 NEXBIT.IO 
                                  
```
