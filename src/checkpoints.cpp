// Copyright (c) 2009-2012 The Bitcoin developers
// Distributed under the MIT/X11 software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <boost/assign/list_of.hpp> // for 'map_list_of()'
#include <boost/foreach.hpp>

#include "checkpoints.h"

#include "txdb.h"
#include "main.h"
#include "uint256.h"


static const int nCheckpointSpan = 500;

namespace Checkpoints
{
    typedef std::map<int, uint256> MapCheckpoints;

    //
    // What makes a good checkpoint block?
    // + Is surrounded by blocks with reasonable timestamps
    //   (no blocks before with a timestamp after, none after with
    //    timestamp before)
    // + Contains no strange transactions
    //
   static MapCheckpoints mapCheckpoints =
        boost::assign::map_list_of
       
        ( 0,      uint256("0x000001a301f8cbe7e8a36b2e93b6224626afc263a293712a1281112cc34ec6c5") ) // genesis
        ( 650,    uint256("0x95f9ee25d72333a11555da44d03e6991b80e8bc7d964c8bec4afb53316d1e556") )
        ( 2799,   uint256("0xc6018be1d10900ca11cf9d4fe647f0639f101fbb0bdbb816f2bb202d52536187") )
        ( 12400,  uint256("0xe303ba9daf7374112a2078ae8f8ab01a4b53e3254ccb54b2e3899e6c3b1902eb") )
        ( 24800,  uint256("0x8d2634f408f8fb1c2f7a7766f759b6c07305950f8f5eb6d26ae83ea4af9ec9c6") )
        ( 29209,  uint256("0xaf4de031b03ce279ca9e405593186503e60b114725c37f6a087b62df78434fb1") )  //correct block height
        ( 37520,  uint256("0x7f6ac4b8dc5d383410cc4c2522628d95b573e3f69b04233479b98d40e498606a") ) 
        ( 38617,  uint256("0x71639f687f0b61a2fbdb73d8fb21b521d5e9666db78a522a6f3230bbb58b6ce9") ) 
    ;

    // TestNet has no checkpoints
    static MapCheckpoints mapCheckpointsTestnet;

    bool CheckHardened(int nHeight, const uint256& hash)
    {
        MapCheckpoints& checkpoints = (TestNet() ? mapCheckpointsTestnet : mapCheckpoints);

        MapCheckpoints::const_iterator i = checkpoints.find(nHeight);
        if (i == checkpoints.end()) return true;
        return hash == i->second;
    }

    int GetTotalBlocksEstimate()
    {
        MapCheckpoints& checkpoints = (TestNet() ? mapCheckpointsTestnet : mapCheckpoints);

        if (checkpoints.empty())
            return 0;
        return checkpoints.rbegin()->first;
    }

    CBlockIndex* GetLastCheckpoint(const std::map<uint256, CBlockIndex*>& mapBlockIndex)
    {
        MapCheckpoints& checkpoints = (TestNet() ? mapCheckpointsTestnet : mapCheckpoints);

        BOOST_REVERSE_FOREACH(const MapCheckpoints::value_type& i, checkpoints)
        {
            const uint256& hash = i.second;
            std::map<uint256, CBlockIndex*>::const_iterator t = mapBlockIndex.find(hash);
            if (t != mapBlockIndex.end())
                return t->second;
        }
        return NULL;
    }

    // Automatically select a suitable sync-checkpoint 
    const CBlockIndex* AutoSelectSyncCheckpoint()
    {
        const CBlockIndex *pindex = pindexBest;
        // Search backward for a block within max span and maturity window
        while (pindex->pprev && pindex->nHeight + nCheckpointSpan > pindexBest->nHeight)
            pindex = pindex->pprev;
        return pindex;
    }

    // Check against synchronized checkpoint
    bool CheckSync(int nHeight)
    {
        const CBlockIndex* pindexSync = AutoSelectSyncCheckpoint();

        if (nHeight <= pindexSync->nHeight)
            return false;
        return true;
    }
}
