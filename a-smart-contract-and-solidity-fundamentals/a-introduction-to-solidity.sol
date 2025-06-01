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

// Constant And Immutable Variables

//  cnostant and immutable variables reduce gs costs and improves security.

// Constant Variables: vconstant variables must be assigned at declaration (caanot be altered afterwards).

contract TokenContract {
    // must be assigned at declaration
    uint256 public constant DECIMAL_PLACES = 18;
    string public constant TOKEN_NAME = "My Token";
    address public constant DEAD_ADDRESS = 0x000000000000000000000000000000000000dEaD;
}

// Characteristics of Constant variables:
// a value must be assigned when declared
// value set at compile time
// cannot be altered after contract deployment
// do not take up storage slots (saving gas)
// only value types and strings can be constants
// constant variables are usually CAPITALIZED/UPPERCASED

// Immutable Variables: Variables amreked as immutable can be assigned only once, but this assignment takes place in the constructor
 contract TokenContract {
    // declared but not assigned a value yet;
    // immutable variables may be uninitialisied at this point
    address public immutable deployer;
    uint256 public immutable deploymentTime;

    constructor() {
        // Assigned once in the constructor
        deployer = msg.sender;
        deploymentTime = block.timestamp;
    }
 }
// Characterisics of immutable variables
// * can be assigned in the constructor or at decalration
// * cannot be changed afterwards construction
// * more gas efficient than regular state variables
// * less gas efficient than constants
// * only value types can be immutable (not strings or reference types)


// When to use each:
// * use constant for values known at compile time (eg. mathematical
//    constants, configurable values)
// Use immutable for values that depend on deployment conditions but won't be changed
// after that (e.g. deployer address, configuration based on constructor arguments)
// use regular state variables for values that need to change during the contract's lifetime

// Use constant and immutable whenever possible to:
// reduce gas costs.
// makes contract intentions clearer.
// improves security by preventing accidental state changes.