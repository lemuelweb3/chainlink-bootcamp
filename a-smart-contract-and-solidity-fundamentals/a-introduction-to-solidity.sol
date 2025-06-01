// Solidity Code Structure

// License idenitifier

// SPDX-License-Identifier: MIT

// Version Pragma
// different ways to specifiy solidity versions

// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.19; // any versio f rom this version except for 0.9.0

pragma solidity 0.8.19; // only version 0.8.19

pragma solidity >=0.8.19 <0.9.0 // specifies a range of multiple acceptable soldity versions

// Contract declaration

// Contract block deines the state of what it knows and the functions it can perform

contract MyContract {
    // all contract code goes here
}

// Programming Fundamentals Of Solidity

// Variables: Storing Information:
// Each variable is a container annotated with type and memory location (storage, memory calldata)

// State Variables
// stored permanently in blockchain.
// not decalred within function bodies.
// s_ prefix label for variables stored onchain can be used as a naming convention
// e.g. s_balance, s_names

contract StorageExample {
    uint256 public myNumber = 35; // number
    string public myText = "Blockchain Developer" // text
    bool public isActive = true; // true/false value, default false
    address public owner; // ethereum address
    uint256 private secretNumber; // a private number
}


// State Variable Visibility

// State variables may have different visibility levels

// public: anyone can read. Solidity automatically create corresponding getter function.abi

uint256 public counter = 0; //  counter() getter function created

// private: accessible within current contract only (not truly private per se)

uint256 private password = 123456; // other contracts can't access

// internal: accessible witin current contract and from contracts that inherit from it

uin256 internal sharedSecret = 35; // visible to this contract and child contracts

// Please note: the default visibility is "internal" if not specified