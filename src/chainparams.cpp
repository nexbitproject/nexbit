// Copyright (c) 2010 Satoshi Nakamoto
// Copyright (c) 2009-2012 The Bitcoin developers
// Copyright (c) 2018-2020 NEXBIT.IO developers
// Distributed under the MIT/X11 software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include "assert.h"

#include "chainparams.h"
#include "main.h"
#include "util.h"

#include <boost/assign/list_of.hpp>

using namespace boost::assign;

struct SeedSpec6 {
    uint8_t addr[16];
    uint16_t port;
};

#include "chainparamsseeds.h"


static void convertSeed6(std::vector<CAddress> &vSeedsOut, const SeedSpec6 *data, unsigned int count)
{
    // It'll only connect to one or two seed nodes because once it connects,
    // it'll get a pile of addresses with newer timestamps.
    // Seed nodes are given a random 'last seen time' of between one and two
    // weeks ago.
    const int64_t nOneWeek = 7*24*60*60;
    for (unsigned int i = 0; i < count; i++)
    {
        struct in6_addr ip;
        memcpy(&ip, data[i].addr, sizeof(ip));
        CAddress addr(CService(ip, data[i].port));
        addr.nTime = GetTime() - GetRand(nOneWeek) - nOneWeek;
        vSeedsOut.push_back(addr);
    }
}

class CMainParams : public CChainParams {
public:
    CMainParams() {
        // The message start string is designed to be unlikely to occur in normal data.
        // The characters are rarely used upper ASCII, not valid as UTF-8, and produce
        // a large 4-byte int at any alignment.
        pchMessageStart[0] = 0xa5;
        pchMessageStart[1] = 0x06;
        pchMessageStart[2] = 0x40;
        pchMessageStart[3] = 0x0b;  //net magic number  0xa506400b OR 2768650251 
        vAlertPubKey = ParseHex("040a7bdf5ee26fb26009f21da0e9cefdbcf92fdcaa6bd437822609dbc54485850a1eb1535ad34314b565cf3819bd57876000a7e9340bbeac65ef4a2391c228f8d6");
        nDefaultPort = 13520;
        nRPCPort = 13519;
        bnProofOfWorkLimit = CBigNum(~uint256(0) >> 20);
        const char* pszTimestamp = "NEXBIT one step ahead to the world of financial freedom 22/02/2020";
        std::vector<CTxIn> vin;
        vin.resize(1);
        vin[0].scriptSig = CScript() << 0 << CBigNum(42) << vector<unsigned char>((const unsigned char*)pszTimestamp, (const unsigned char*)pszTimestamp + strlen(pszTimestamp));
        std::vector<CTxOut> vout;
        vout.resize(1);
        vout[0].SetEmpty();
        CTransaction txNew(1, 1583191262, vin, vout, 0);
        genesis.vtx.push_back(txNew);
        genesis.hashPrevBlock = 0;
        genesis.hashMerkleRoot = genesis.BuildMerkleTree();
        genesis.nVersion = 1;
        genesis.nTime    = 1583191262; //Monday, 02-Mar-20 23:21:02 UTC
        genesis.nBits    = bnProofOfWorkLimit.GetCompact();
        genesis.nNonce   = 1229629;
        hashGenesisBlock = genesis.GetHash();
        assert(hashGenesisBlock == uint256("0x000001a301f8cbe7e8a36b2e93b6224626afc263a293712a1281112cc34ec6c5"));
        assert(genesis.hashMerkleRoot == uint256("0xcec4db775a590bd5988b10aa552962b944d320e82335e4c57358a6bf2b9b8ac4"));

        vSeeds.push_back(CDNSSeedData("nexbit.io", "nodea.nexbit.io"));
        vSeeds.push_back(CDNSSeedData("nexbit.io", "nodeb.nexbit.io"));
        vSeeds.push_back(CDNSSeedData("nexbit.io", "nodec.nexbit.io"));
        vSeeds.push_back(CDNSSeedData("nexbit.io", "noded.nexbit.io"));
        vSeeds.push_back(CDNSSeedData("nexbit.io", "nodee.nexbit.io")); // new node
        vSeeds.push_back(CDNSSeedData("nexbit.io", "nodef.nexbit.io")); // new seed node

        base58Prefixes[PUBKEY_ADDRESS] = std::vector<unsigned char>(1, 54);
        base58Prefixes[SCRIPT_ADDRESS] = std::vector<unsigned char>(1, 53);
        base58Prefixes[SECRET_KEY] = std::vector<unsigned char>(1, 181);
        base58Prefixes[EXT_PUBLIC_KEY] = boost::assign::list_of(0x04)(0x88)(0xB2)(0x1E).convert_to_container<std::vector<unsigned char> >();
        base58Prefixes[EXT_SECRET_KEY] = boost::assign::list_of(0x04)(0x88)(0xAD)(0xE4).convert_to_container<std::vector<unsigned char> >();

        convertSeed6(vFixedSeeds, pnSeed6_main, ARRAYLEN(pnSeed6_main));

        nLastPOWBlock = 10000; // POW already over.
    }

    virtual const CBlock& GenesisBlock() const { return genesis; }
    virtual Network NetworkID() const { return CChainParams::MAIN; }

    virtual const vector<CAddress>& FixedSeeds() const {
        return vFixedSeeds;
    }
protected:
    CBlock genesis;
    vector<CAddress> vFixedSeeds;
};
static CMainParams mainParams;


//
// Testnet
//

class CTestNetParams : public CMainParams {
public:
    CTestNetParams() {
        // The message start string is designed to be unlikely to occur in normal data.
        // The characters are rarely used upper ASCII, not valid as UTF-8, and produce
        // a large 4-byte int at any alignment.
        pchMessageStart[0] = 0x0e;
        pchMessageStart[1] = 0x4b;
        pchMessageStart[2] = 0xad;
        pchMessageStart[3] = 0x31;
        bnProofOfWorkLimit = CBigNum(~uint256(0) >> 16);
        vAlertPubKey = ParseHex("0497e21613c39c9260dccb6a1468b53f59f8f63513cef2e4a8dc2f2696aa357423134c7c9d89921cbf4ff2f553796a9444a2510f8eede2e992878b9e8522d58dea");
        nDefaultPort = 23520;
        nRPCPort = 23519;
        strDataDir = "testnet";
        genesis.nBits  = bnProofOfWorkLimit.GetCompact();
        genesis.nNonce = 1229629;
        hashGenesisBlock = genesis.GetHash();
      //assert(hashGenesisBlock == uint256("0x7d8aa4dcee9706d3d5a8efe53368f72fd48769b2257354c49107ccc0207c9987"));
      //assert(genesis.hashMerkleRoot == uint256("0xcec4db775a590bd5988b10aa552962b944d320e82335e4c57358a6bf2b9b8ac4"));

        vSeeds.push_back(CDNSSeedData("nexbit.io", "test.nexbit.io")); //add fixed testnet node

        base58Prefixes[PUBKEY_ADDRESS] = std::vector<unsigned char>(1, 111);
        base58Prefixes[SCRIPT_ADDRESS] = std::vector<unsigned char>(1, 196);
        base58Prefixes[SECRET_KEY]     = std::vector<unsigned char>(1, 239);
        base58Prefixes[EXT_PUBLIC_KEY] = boost::assign::list_of(0x04)(0x35)(0x87)(0xCF).convert_to_container<std::vector<unsigned char> >();
        base58Prefixes[EXT_SECRET_KEY] = boost::assign::list_of(0x04)(0x35)(0x83)(0x94).convert_to_container<std::vector<unsigned char> >();

        convertSeed6(vFixedSeeds, pnSeed6_test, ARRAYLEN(pnSeed6_test));

        nLastPOWBlock = 0x7fffffff;
    }
    virtual Network NetworkID() const { return CChainParams::TESTNET; }
    virtual const vector<CAddress>& FixedSeeds() const {
        return vFixedSeeds;
};
 protected:
    CBlock genesis;
    vector<CAddress> vFixedSeeds;
};
static CTestNetParams testNetParams;


//
// Regression test
//
class CRegTestParams : public CTestNetParams {
public:
    CRegTestParams() {
        pchMessageStart[0] = 0xa8;
        pchMessageStart[1] = 0x20;
        pchMessageStart[2] = 0x8d;
        pchMessageStart[3] = 0x11;
        nDefaultPort = 18444;
        strDataDir = "regtest";
        bnProofOfWorkLimit = CBigNum(~uint256(0) >> 1);
        genesis.nTime = 1583191262;
        genesis.nBits  = bnProofOfWorkLimit.GetCompact();
 //       genesis.nNonce = 1229629;
        hashGenesisBlock = genesis.GetHash();

        //assert(hashGenesisBlock == uint256("0x000001a301f8cbe7e8a36b2e93b6224626afc263a293712a1281112cc34ec6c5"));
    //    assert(genesis.hashMerkleRoot == uint256("0xcec4db775a590bd5988b10aa552962b944d320e82335e4c57358a6bf2b9b8ac4"));
        vSeeds.clear();  // Regtest mode doesn't have any DNS seeds.
    }

    virtual bool RequireRPCPassword() const { return false; }
    virtual Network NetworkID() const { return CChainParams::REGTEST; }
};
static CRegTestParams regTestParams;

static CChainParams *pCurrentParams = &mainParams;

const CChainParams &Params() {
    return *pCurrentParams;
}

void SelectParams(CChainParams::Network network) {
    switch (network) {
        case CChainParams::MAIN:
            pCurrentParams = &mainParams;
            break;
        case CChainParams::TESTNET:
            pCurrentParams = &testNetParams;
            break;
        case CChainParams::REGTEST:
            pCurrentParams = &regTestParams;
            break;
        default:
            assert(false && "Unimplemented network");
            return;
    }
}

bool SelectParamsFromCommandLine() {
    bool fRegTest = GetBoolArg("-regtest", false);
    bool fTestNet = GetBoolArg("-testnet", false);

    if (fTestNet && fRegTest) {
        return false;
    }

    if (fRegTest) {
        SelectParams(CChainParams::REGTEST);
    } else if (fTestNet) {
        SelectParams(CChainParams::TESTNET);
    } else {
        SelectParams(CChainParams::MAIN);
    }
    return true;
}
