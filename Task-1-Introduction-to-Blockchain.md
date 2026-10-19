Task 1: Introduction to Blockchain

Internship Program: Skillzeno Internship
Task: Introduction to Blockchain
Author: Syamsul febrizal
Date: October 19, 2026

---

1. Introduction

Blockchain is a technology that allows digital information to be recorded, shared, and verified across a network of computers. Unlike traditional databases that are usually managed by a central organization, many blockchain networks distribute responsibility for maintaining records among multiple participants.

Blockchain is best known as the technology behind cryptocurrencies such as Bitcoin and Ethereum. However, its applications extend beyond digital currencies to include decentralized finance, supply chain management, digital identity, and other systems that require verifiable records.

The purpose of this report is to explain the fundamentals of blockchain technology, describe blocks and transactions, explain how distributed ledgers and blockchain networks operate, and examine real-world applications.

2. Fundamentals of Blockchain Technology

2.1 What Is Blockchain?

A blockchain is a type of distributed ledger that stores records in structures called blocks. These blocks are linked together using cryptographic hashes, forming a chain of records.

Each block typically contains transaction data, a timestamp or other metadata, and a cryptographic reference to a previous block. This reference helps connect the blocks and makes unauthorized modifications detectable.

If someone changes the contents of an existing block, its hash will generally change. This can invalidate the links to subsequent blocks, making the alteration detectable by participants who validate the chain.

However, blockchain should not be described as absolutely impossible to modify. The practical difficulty of changing historical records depends on the network's consensus mechanism, security, participant distribution, and the resources available to an attacker.

2.2 Key Characteristics of Blockchain

1. Decentralization

Many blockchain networks operate without a single central authority controlling every transaction. Instead, multiple participants maintain or verify the network according to shared rules.

Decentralization can reduce dependence on one organization, although the actual degree of decentralization varies between networks.

2. Transparency

Public blockchains allow people to inspect transaction records using blockchain explorers or other network tools. This transparency helps users verify activity independently.

However, transparent transaction records do not necessarily reveal the real-world identities of the people involved. Blockchain addresses are generally pseudonymous, not automatically anonymous.

3. Immutability

Blockchain records are designed to make unauthorized historical changes difficult to perform without detection. Cryptographic linking and network consensus help protect the integrity of records.

Immutability is a practical security property rather than an absolute guarantee. Some networks may reorganize recent blocks, and certain permissioned systems may permit authorized changes.

4. Cryptographic Security

Blockchain systems use cryptographic techniques to protect data integrity and support transaction authorization.

Cryptographic hashes produce fixed-length outputs from input data. Digital signatures allow a network to verify that a transaction was authorized by the holder of the corresponding private key.

5. Distributed Record-Keeping

Depending on the network design, multiple computers may maintain copies of the ledger. This reduces reliance on a single database and allows participants to verify records according to the network's rules.

2.3 Blockchain and Traditional Databases

A traditional database is commonly managed by an organization that controls access, permissions, and record updates. This approach is effective for many business applications.

A blockchain distributes record validation and maintenance according to a protocol. This can be useful when several parties need to share records but do not want to rely entirely on one central operator.

Blockchain is not automatically better than a traditional database. A conventional database may be faster, cheaper, and easier to manage when a trusted organization can operate the system. Blockchain is most useful when shared verification, coordination between independent participants, or decentralized execution provides meaningful benefits.

3. Blocks, Transactions, and Distributed Ledgers

3.1 What Is a Block?

A block is a data structure that groups transactions or other records together.

A typical blockchain block may contain:

- Block header: Metadata used to identify the block and support validation.
- Transaction data: The transactions included in the block.
- Previous block hash: A cryptographic reference to an earlier block.
- Timestamp or protocol-specific metadata: Information associated with the block's creation or validation.
- Consensus-related information: Data required by the particular blockchain protocol.

The exact structure differs between blockchain networks. For example, Bitcoin and Ethereum do not use identical block structures.

Blocks are linked through cryptographic references. The first block in a chain is commonly called the genesis block.

3.2 What Is a Transaction?

A transaction is an operation submitted to a blockchain network. Depending on the network, it may transfer digital assets, interact with a smart contract, or record another permitted state change.

On Ethereum, for example, a transaction can transfer ETH from one address to another or call a smart contract function.

A typical Ethereum transaction may include:

- Sender: The address initiating the transaction.
- Recipient: The destination address or smart contract.
- Value: The amount of ETH transferred, if any.
- Nonce: A transaction counter associated with the sender.
- Gas parameters: Information used to determine transaction execution costs.
- Signature: Cryptographic data used to authorize the transaction.
- Input data: Optional data, such as encoded smart contract function arguments.

These fields vary across blockchain protocols. They should not be assumed to apply identically to every network.

3.3 How a Blockchain Transaction Works

A simplified transaction lifecycle consists of the following steps:

1. Transaction creation: A user creates a transaction, such as transferring cryptocurrency or calling a smart contract.
2. Authorization: The transaction is signed using the appropriate private key.
3. Broadcasting: The signed transaction is sent to the blockchain network.
4. Initial validation: Network participants check whether the transaction meets the protocol's requirements.
5. Inclusion: A block producer or validator includes the transaction in a candidate block.
6. Block validation: Other participants verify the block according to the network's rules.
7. Consensus and confirmation: The network's consensus mechanism determines which blocks become part of the accepted chain.
8. State update: If the transaction is valid and successfully executed, the blockchain's state changes accordingly.

The precise process differs between networks. For example, some systems use proof of work, while others use proof of stake or different consensus mechanisms.

A transaction being included in a block does not always mean it is immediately irreversible. Users should consider the confirmation and finality rules of the network they are using.

3.4 What Is a Distributed Ledger?

A distributed ledger is a shared record of information maintained across multiple participants or computers.

In a blockchain network, participants use the protocol's rules to validate transactions and maintain a consistent view of the ledger. Depending on the architecture, not every participant necessarily stores every piece of data or performs every validation task.

A distributed ledger offers several potential benefits:

- Shared access to records.
- Independent verification of transactions.
- Reduced dependence on one central database operator.
- Improved auditability.
- Greater resilience against certain individual system failures.

Nevertheless, distributed systems introduce challenges, including coordination, network latency, data storage requirements, and the need for a reliable consensus process.

4. How Blockchain Networks Work

4.1 Network Participants

Blockchain networks can contain several types of participants.

Users: Create transactions and interact with the network.

Nodes: Run blockchain software and communicate with other participants. Depending on their configuration, nodes may verify transactions, validate blocks, relay information, or store ledger data.

Miners: In proof-of-work networks, miners perform computational work to compete to produce blocks.

Validators: In proof-of-stake networks, validators participate in block proposal and validation according to the protocol's rules.

Smart contracts: Programs deployed on compatible blockchains that execute when called through transactions or other protocol-defined mechanisms.

Not every blockchain uses miners, validators, or smart contracts in the same way. These roles depend on the network's design.

4.2 Consensus Mechanisms

A consensus mechanism helps distributed participants agree on the blockchain's accepted history and state.

Two widely discussed approaches are proof of work and proof of stake.

Proof of Work (PoW)

Proof of work requires miners to perform computational work to compete to add blocks. Bitcoin is a prominent example of a proof-of-work blockchain.

The mechanism makes certain attacks costly because an attacker may need substantial computational resources to influence the chain. However, proof of work can consume significant energy.

Proof of Stake (PoS)

Proof of stake uses staked assets and protocol-defined validator responsibilities to help secure the network. Ethereum is an example of a blockchain that uses proof of stake.

Depending on the protocol, validators may face penalties for certain forms of misconduct. Proof of stake avoids the same mining process used by proof-of-work systems, although it has different economic and security trade-offs.

Neither mechanism eliminates every possible attack. Network security depends on protocol design, implementation quality, participant incentives, and operational practices.

4.3 Public and Private Blockchains

Blockchain networks can be classified according to their access and governance models.

Public blockchains

Public blockchains generally allow people to read the ledger and, subject to protocol rules, submit transactions without obtaining permission from a central administrator.

Examples include Bitcoin and Ethereum.

Advantages may include open participation, public verification, and broad accessibility. Challenges can include transaction fees, limited throughput, and public exposure of transaction data.

Private or permissioned blockchains

Private or permissioned blockchains restrict participation or certain operations to approved organizations or users.

They may be useful for enterprise systems that require controlled access, defined governance, and coordination between known participants.

However, they may provide less open participation and may rely more heavily on the organizations that operate or govern the network.

The choice between public and permissioned systems depends on the project's requirements, trust model, privacy needs, and governance structure.

4.4 Smart Contracts

A smart contract is a program deployed on a blockchain that can execute operations according to its code and the blockchain's execution rules.

Smart contracts can implement functions such as token transfers, lending operations, voting rules, and decentralized exchange mechanisms.

On Ethereum, smart contracts are commonly written in Solidity and compiled into bytecode that can execute in the Ethereum Virtual Machine (EVM).

For example, a simplified token contract may define who owns tokens and under what conditions they can be transferred.

Smart contracts can reduce the need for manual processing in certain workflows, but they also introduce risks. Programming errors, insecure access controls, incorrect assumptions, and economic vulnerabilities can result in financial losses.

Therefore, smart contracts should be tested, reviewed, and assessed for security before deployment.

5. Real-World Applications of Blockchain

5.1 Cryptocurrency and Digital Payments

Bitcoin demonstrated how a blockchain could support a digital asset system without relying on a single central ledger operator.

Cryptocurrencies can be transferred between addresses, and transaction records can be independently verified against the network.

Potential benefits include global accessibility and direct digital transfers. Challenges include price volatility, transaction costs, regulatory requirements, and the risk of losing access to private keys.

5.2 Decentralized Finance (DeFi)

Decentralized finance uses blockchain-based applications and smart contracts to provide financial services.

Examples include:

- Token swaps on decentralized exchanges.
- Lending and borrowing protocols.
- Liquidity provision.
- Staking-related applications.
- Collateral management.
- On-chain financial instruments.

DeFi applications can operate through publicly inspectable smart contracts, allowing users to interact with financial protocols directly.

However, DeFi also involves substantial risks, including smart contract vulnerabilities, oracle manipulation, liquidation risk, market volatility, and governance attacks. A protocol being deployed on a blockchain does not automatically make it secure.

5.3 Supply Chain Management

Blockchain can be used to record events in a product's supply chain, such as production, shipment, and delivery.

Multiple organizations may use shared records to improve traceability and auditing.

For example, a supply chain application could record when a shipment leaves a warehouse and when it reaches a distribution center.

However, blockchain cannot independently guarantee that information entered into the system is truthful. Reliable identification, data collection, and verification procedures remain necessary.

5.4 Digital Identity and Credentials

Blockchain-based systems can support the verification of digital credentials, certificates, or identity-related claims.

For example, a system could allow a verifier to check whether a credential was issued by a recognized organization without requiring every verification step to be managed by the issuer.

Privacy must be considered carefully. Sensitive personal information should not be placed directly on an immutable public ledger without an appropriate design and legal basis.

5.5 Tokenization of Assets

Tokenization represents an asset or a claim related to an asset using blockchain-based tokens.

Possible applications include digital representations of financial instruments, membership rights, and certain real-world assets.

Tokenization can support programmable transfers and automated record-keeping. However, a blockchain token does not automatically establish legal ownership of an underlying physical asset. The legal agreements, custody arrangements, and applicable regulations remain important.

5.6 Voting and Governance

Blockchain-based systems can record votes or support governance processes in digital communities and organizations.

Potential benefits include transparent vote records and independently verifiable counting procedures.

However, blockchain alone does not guarantee that a vote is private, that each eligible participant votes only once, or that a voter's device has not been compromised. Secure election systems require much more than an immutable record.

6. Advantages and Limitations of Blockchain

6.1 Advantages

Transparency and auditability: Public records can allow independent verification of transactions.

Shared verification: Participants can apply common protocol rules instead of relying entirely on one central record keeper.

Tamper evidence: Cryptographic linking can make unauthorized changes to historical records detectable.

Programmability: Smart contracts can automate operations and implement complex rules.

Global accessibility: Public networks can allow users to interact across geographic boundaries, subject to network requirements and applicable laws.

6.2 Limitations and Risks

Scalability: Some blockchains have limited transaction throughput or experience congestion during periods of high demand.

Transaction costs: Network fees can fluctuate depending on demand and protocol design.

Security risks: Software bugs, compromised private keys, malicious applications, and consensus attacks can lead to losses.

Privacy concerns: Public transaction data may reveal patterns of user activity, even when addresses do not directly display real-world names.

Regulatory uncertainty: Legal requirements differ across countries and application types.

Complexity: Blockchain systems can be difficult to design, maintain, and integrate with existing infrastructure.

Data quality: Blockchain records do not guarantee the truthfulness of information entered by external users or systems.

Blockchain should therefore be selected based on a clear technical or business requirement rather than used simply because it is a new technology.

7. Conclusion

Blockchain is a distributed record-keeping technology that combines data structures, cryptography, network communication, and consensus mechanisms to maintain a shared ledger.

Blocks organize records, transactions represent proposed operations, and network participants verify activity according to protocol rules. Consensus mechanisms help participants agree on the accepted blockchain history.

Blockchain has applications in cryptocurrency, decentralized finance, supply chain management, digital credentials, asset tokenization, and governance. These applications can provide transparency, shared verification, and programmable operations.

However, blockchain also has limitations involving scalability, fees, privacy, regulatory compliance, and security. Its suitability depends on the specific problem being solved and the design of the system.

Through this research, I gained a foundational understanding of blockchain architecture, transaction processing, distributed ledgers, consensus mechanisms, and real-world use cases. These fundamentals provide a starting point for further study of Ethereum, Solidity, smart contract development, and blockchain security.

8. References

1. National Institute of Standards and Technology (NIST). Blockchain Technology Overview. NIST Internal Report 8202. https://doi.org/10.6028/NIST.IR.8202
2. Bitcoin Project. Bitcoin: A Peer-to-Peer Electronic Cash System. Satoshi Nakamoto. https://bitcoin.org/bitcoin.pdf
3. Ethereum Foundation. Ethereum Developer Documentation. https://ethereum.org/developers/docs/
4. Ethereum Foundation. Transactions documentation. https://ethereum.org/developers/docs/transactions/
5. Ethereum Foundation. Blocks documentation. https://ethereum.org/developers/docs/blocks/
6. Ethereum Foundation. Proof-of-Stake (PoS) documentation. https://ethereum.org/developers/docs/consensus-mechanisms/pos/
7. Solidity Team. Solidity Documentation. https://docs.soliditylang.org/

---

End of Report
