Task 3: Smart Contracts & Solidity

Author: Syamsul Febrizal
Date: October 23, 2026

Objective

To understand the fundamentals of smart contracts and Solidity by creating, deploying, and testing a simple smart contract using Remix IDE.

Overview

Smart contracts are programs deployed on a blockchain that execute predefined instructions when their functions are called. Solidity is a programming language used to develop smart contracts for Ethereum-compatible blockchains.

For this task, I created a "SimpleStorage" smart contract using Solidity and tested it in Remix IDE.

Implementation

The "SimpleStorage" contract includes the following features:

 - Stores and retrieves a number using "setNumber()" and "getNumber()".
 - Restricts number updates to the contract owner using the "onlyOwner" modifier.
 - Uses a custom error, "NotOwner()", to reject unauthorized updates.
 - Emits a "NumberUpdated" event whenever the stored number is updated.
 - Uses an immutable "owner" variable to record the address that deployed the contract.

Testing

The contract was compiled, deployed, and manually tested using Remix IDE with the Remix VM environment.

The following test cases were performed:

1. Called "getNumber()" after deployment and confirmed the initial value was "0".
2. As the owner, called "setNumber(100)" and confirmed the stored value became "100".
3. Switched to another account and attempted to call "setNumber(300)". The transaction reverted with "NotOwner()", as expected.
4. Switched back to the owner and called "setNumber(200)" successfully.
5. Checked the "NumberUpdated" event log and confirmed the old value was "100", the new value was "200", and the updater was the owner's address.

Learning Outcomes

Through this task, I learned how to:

 - Understand the basic concepts of smart contracts and Solidity.
 - Create and deploy a simple smart contract using Remix IDE.
 - Use state variables, functions, modifiers, custom errors, and events.
 - Restrict function access to the contract owner.
 - Test contract behavior and verify transaction event logs.

Conclusion

This task provided practical experience in writing, deploying, and testing a basic Solidity smart contract. It also introduced important concepts such as access control, custom errors, and event logging.

Source Code

The source code is available in this repository as "SimpleStorage.sol".
