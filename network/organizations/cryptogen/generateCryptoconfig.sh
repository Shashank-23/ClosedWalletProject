#!/bin/bash
 export PATH=${PWD}/../../../bin:$PATH

 echo $PATH

 cd /Users/shashankawasthi/Documents/ClosedWalletProject/network/organizations/cryptogen

  infoln "Creating Orderer Org Identities"

    set -x
    cryptogen generate --config=crypto-config-orderer.yaml --output=../
    res=$?
    { set +x; } 2>/dev/null
    if [ $res -ne 0 ]; then
      fatalln "Failed to generate certificates..."
    fi

  infoln "Creating Org1 Identities"

 set -x
    cryptogen generate --config=crypto-config-org1.yaml --output=../
    res=$?
    { set +x; } 2>/dev/null
    if [ $res -ne 0 ]; then
      fatalln "Failed to generate certificates..."
    fi
