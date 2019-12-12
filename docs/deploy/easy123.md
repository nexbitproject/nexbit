Use linux ubuntu 18.04.4 LTS 64 bit for bext performance.
If anyone face connectivity issues then can run this script:
*********************************************

wget https://gist.githubusercontent.com/bitbd83/8af838fb611b530b93c966f952ba64e9/raw/6ad3570a5e78f06645159ca89ee948907ba8d305/iptables.sh

Run ./iptables.sh

 #And We make easy deployment of nodes easy like 1,2,3
 *****************************************************
1. Download nexbit.conf < If any modification needs then modify >

wget https://gist.githubusercontent.com/bitbd83/94f43f99b1a619e6ea69d78dfa69d6b0/raw/401a0d080bfc316bbbdc351eeb313dd207aaa239/nexbit.conf

#Open it with nano or vim then edit & save.

2. Download setup script

    wget https://gist.githubusercontent.com/bitbd83/c68ecb38772402ca663a599a4ee8243e/raw/d38f5dc67c060e4d4755e6a3b6b501b0afda97ee/setup.sh

3. Run [setup.sh] by ./setup.sh
  #Middle of the setup process ask for config, then you just [paste] your pre-downloaded nexbit.conf file and CTRL+X

