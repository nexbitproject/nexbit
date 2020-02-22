NEXBIT Core integration/staging repository
=====================================

[![Build Status](https://travis-ci.org/nexbitproject/NEXBIT.svg?branch=master)](https://travis-ci.org/nexbitroject/nexbit) [![GitHub version](https://badge.fury.io/gh/nexbitroject%2Fnexbit.svg)](https://badge.fury.io/gh/nexbitproject%2Fnexbit)

NEXBIT is an open source crypto-currency focused on fast private transactions using the Zerocoin protocol, with low transaction fees & environmental footprint.  It utilizes the first ever anonymous proof of stake protocol, called zPoS, combined with regular PoS and masternodes for securing its network. zPoS incentivises using the privacy features available in NEXBIT by granting a higher block reward for zPoS over regular PoS and masternodes. In practice NEXBIT has between 4 to 10 times higher use of it's privacy features in comparison to other coins that combine public and private transactions. This is thanks to innovations like zPoS and integrating the Zerocoin protocol into light/mobile wallets, allowing for a complete and lightweight privacy protocol that can be used on the go. As well as security improvements like deterministic generation of zNBC for easy backups.

The goal of NEXBIT is to achieve a decentralized sustainable crypto currency with near instant full-time private transactions, fair governance and community intelligence.
- Anonymized transactions & consensus using the [_Zerocoin Protocol_](http://www.nexbit.io/znexbit) and [zPoS](https://nexbit.io/zpos/).
- light/mobile wallet privacy using the [Zerocoin Light Node Protocol](https://nexbit.io/docs/2019/02/Zerocoin_Light_Node_Protocol.pdf)
- Fast transactions featuring guaranteed zero confirmation transactions, we call it _SwiftX_.
- Decentralized blockchain voting utilizing Masternode technology to form a DAO. The blockchain will distribute monthly treasury funds based on successful proposals submitted by the community and voted on by the DAO.

More information at [nexbit.org](http://www.nexbit.io) Visit our ANN thread.
### Coin Specs
<table>
<tr><td>Algo</td><td>Quark</td></tr>
<tr><td>Block Time</td><td>60 Seconds</td></tr>
<tr><td>Difficulty Retargeting</td><td>Every Block</td></tr>
<tr><td>Max Coin Supply (PoW Phase)</td><td>371,995,000 NBC</td></tr>


</table>

### For Dependencies;
```
wget https://raw.githubusercontent.com/nexbitproject/nexbit/master/script/deps.sh && sh deps.sh

```
### Ports

RPC: 13774
P2P: 13775

### Ports [Testnet]

RPC: 23774
P2P: 23775

### Ports [RegTest]

18444




### PoS Reward Distribution

<table>
<th>Phase</th><th>Block Height</th><th>Reward</th><th>Masternodes & Stakers</th><th>Budget</th>
<tr><td>Phase 0</td><td>301-302399</td><td>50 NBC</td><td>90% (45 NBC)</td><td>10% (5 NBC)</td></tr>
<tr><td>Phase 1</td><td>302400-345599</td><td>45 NBC</td><td>90% (40.5 NBC)</td><td>10% (4.5 NBC)</td></tr>
<tr><td>Phase 2</td><td>345600-388799</td><td>40 NBC</td><td>90% (36 NBC)</td><td>10% (4 NBC)</td></tr>
<tr><td>Phase 3</td><td>388800-431999</td><td>35 NBC</td><td>90% (31.5 NBC)</td><td>10% (3.5 NBC)</td></tr>
<tr><td>Phase 4</td><td>432000-475199</td><td>30 NBC</td><td>90% (27 NBC)</td><td>10% (3 NBC)</td></tr>
<tr><td>Phase 5</td><td>475200-518399</td><td>25 NBC</td><td>90% (22.5 NBC)</td><td>10% (2.5 NBC)</td></tr>
<tr><td>Phase 6</td><td>518400-561599</td><td>20 NBC</td><td>90% (18 NBC)</td><td>10% (2 NBC)</td></tr>
<tr><td>Phase 7</td><td>561600-604799</td><td>15 NBC</td><td>90% (13.5 NBC)</td><td>10% (1.5 NBC)</td></tr>
<tr><td>Phase 8</td><td>604800-647999</td><td>10 NBC</td><td>90% (9 NBC)</td><td>10% (1 NBC)</td></tr>
<tr><td>Phase 9</td><td>648000-1154203</td><td>5 NBC</td><td>90% (4.5 NBC)</td><td>10% (0.5 NBC)</td></tr>
<tr><td>Phase X</td><td>1154203-∞</td><td>6 NBC</td><td>84% (5 NBC/zNBC)</td><td>16% (1 NBC)</td></tr>
</table>

```
NEXBIT.IO
```
