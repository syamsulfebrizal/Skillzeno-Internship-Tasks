Task 2: Blockchain Transactions & Security
Skillzeno Blockchain Technology Internship

internship Program: Skillzeno Internship
Task: Blockchain Transactions & Security
Author: Syamsul febrizal
Date: October 20, 2026

 1. Introduction
Blockchain transactions allow participants to record and transfer information or digital assets on a blockchain network. 
Transaction security relies on cryptographic techniques, network rules, and consensus mechanisms. 
This report introduces transaction creation, hashing, digital signatures, basic security concepts, and transaction verification.

 2. How Blockchain Transactions Are Created
A blockchain transaction is an instruction submitted to a network. 
For example, an Ethereum user may create a transaction to transfer ETH or interact with a smart contract.

A typical transaction process includes:
 1. Create the transaction: The sender specifies the recipient or contract, the value or action, and required transaction parameters. 
    On Ethereum, these parameters include a nonce and fee-related fields.
 2. Sign the transaction: The wallet uses the sender's private key to create a cryptographic digital signature. The private key must remain secret.
 3. Broadcast the transaction: The signed transaction is sent to one or more network nodes.
 4. Wait for processing: A node may share a valid pending transaction with other nodes. 
    Pending transactions are commonly held in a mempool, although mempool behavior can differ between nodes.
 5. Include it in a block: A block producer or validator may include the transaction in a block according to the network's rules.
 6. Confirmation and finality: The network processes the block. 
    Confirmation and finality are different concepts; a transaction may be included in a block before it has reached the network's finality guarantees.

A transaction being broadcast does not mean it has already been confirmed.

 3. Hashing
Hashing is the process of transforming input data into a fixed-length output using a hash function. SHA-256 is one example of a cryptographic hash function.
Important properties of a secure cryptographic hash function include:
 > Deterministic: The same input produces the same hash when the same function and encoding are used.
 > Preimage resistance: Given a hash, it should be computationally infeasible to find an input that produces it.
 > Second-preimage resistance: Given one input, it should be infeasible to find a different input with the same hash.
 > Collision resistance: It should be infeasible to find any two distinct inputs that produce the same hash.
 > Sensitivity to input changes: A small change to the input will typically produce a substantially different hash.

Hashing is not encryption. A hash function does not use a decryption key to recover the original input.

Uses of hashing in blockchain
  > Data integrity: Recomputing a hash can help detect whether data has changed.
  > Block linking: Blockchains such as Bitcoin include a reference to the previous block's hash in each block's header, linking the history together.
  > Transaction identifiers and data structures: Hashes are used in transaction identification and structures such as Merkle trees.

A hash alone does not prevent data from being changed. Blockchain security also depends on validation rules, consensus, and the cost or difficulty of rewriting accepted history.

 4. Digital Signatures
A digital signature is a cryptographic value generated using a private key and data. 
Other participants can verify the signature using the appropriate verification method.
Digital signatures help establish that data was authorized by the holder of the relevant private key and help detect changes to the signed data. 
They do not make transaction data confidential; public blockchain transactions are generally visible to the public.
In Ethereum, externally owned accounts use elliptic-curve cryptography for transaction signatures. 
Nodes validate transaction signatures and derive or check the sender according to the protocol rules.

Private-key safety
  > Never share a private key or recovery phrase.
  > Do not paste private keys into websites or untrusted applications.
  > Use reputable wallet software and protect devices used to access wallets.
  > Treat any exposure of a private key as a serious security incident.

 5. Basic Blockchain Security Concepts
5.1 Private-key protection
Anyone who obtains control of a private key may be able to authorize actions from the associated account. Strong key management is therefore essential.
5.2 Integrity and tamper evidence
Cryptographic hashes and links between blocks make changes to historical data detectable. However, hashes by themselves are not a complete security system.
5.3 Consensus
Consensus protocols help network participants agree on the accepted state and transaction history. Different blockchains use different mechanisms, such as Proof of Work or Proof of Stake.
5.4 Double-spending
Double-spending is an attempt to use the same digital funds more than once. Networks use transaction rules, ordering, and consensus to prevent conflicting spends from both being accepted as final.
5.5 Phishing and malicious transactions
Attackers may trick users into revealing secret recovery information or signing transactions they do not understand. Users should verify the application, recipient, requested permissions, and transaction details before signing.
5.6 Smart-contract vulnerabilities
Smart contracts can contain bugs, including access-control errors, reentrancy vulnerabilities, unsafe external-call handling, or incorrect business logic. Audits, testing, code review, and secure development practices help reduce these risks but cannot guarantee that a contract is free of vulnerabilities.
5.7 Network and consensus risks
Networks may face denial-of-service attempts, validator concentration, or attacks on consensus assumptions. The specific risks depend on the blockchain's design and economic incentives.

 6. How Transactions Are Verified
Transaction verification is performed by network nodes according to the blockchain's protocol rules. On Ethereum, checks include items such as:
  1. Signature and sender: The signature must be valid and correspond to the claimed sender.
  2. Nonce: The transaction nonce must satisfy the account's transaction-ordering rules.
  3. Balance and fees: The sender must have enough balance to cover the transaction's value and required maximum fee exposure under the protocol rules.
  4. Transaction format and limits: The transaction must follow protocol requirements, including applicable gas limits and fee rules.
  5. Execution: If included in a block, the transaction is executed according to Ethereum's state-transition rules. A smart-contract call can fail during execution even if the transaction itself was validly signed and included in a block.
  6. Block and consensus validation: Nodes validate the block and its state transition. The transaction's confirmation and finality depend on the network's consensus process.

A transaction can be validly signed but fail during smart-contract execution. In such a case, the transaction may still be included in a block and consume gas.

 7. Example: Sending ETH
Suppose Alice wants to send ETH to Bob.
  > Alice enters Bob's public address and the amount in her wallet.
  > The wallet prepares the transaction and signs it with Alice's private key.
  > The signed transaction is broadcast to the Ethereum network.
  > Nodes check the transaction against protocol rules.
  > A validator may include the transaction in a block.
  > The network processes the block, and the transaction gains confirmation. Finality follows the network's consensus guarantees.

Alice should verify Bob's address and the transaction details before signing. 
A signed transaction is not automatically reversible, and sending assets to an incorrect address can result in loss.

 8. Conclusion
Blockchain transactions combine transaction data, digital signatures, network validation, block inclusion, and consensus. 
Cryptographic hashing helps identify data and reveal changes, while digital signatures help verify authorization. 
Security also requires careful private-key management, safe user behavior, sound protocol design, and secure smart-contract development. 
Understanding these concepts is essential for using and building blockchain applications responsibly.

 9. References
1. National Institute of Standards and Technology (NIST), Blockchain Technology Overview, NISTIR 8202: https://doi.org/10.6028/NIST.IR.8202
2. Bitcoin, Bitcoin: A Peer-to-Peer Electronic Cash System: https://bitcoin.org/bitcoin.pdf
3. Ethereum.org, Transactions: https://ethereum.org/en/developers/docs/transactions/
4. Ethereum.org, Nodes and clients: https://ethereum.org/en/developers/docs/nodes-and-clients/
5. Ethereum.org, Proof-of-stake: https://ethereum.org/en/developers/docs/consensus-mechanisms/pos/
6. NIST, Secure Hash Standard (SHS), FIPS PUB 180-4: https://csrc.nist.gov/pubs/fips/180-4/upd1/final

Prepared for the Skillzeno Blockchain Technology Internship — Task 2.
