Task 4: Mini Blockchain Project

Author: Syamsul Febrizal
Date: October 24, 2026
Project Name: CharityChain — Transparent Donation Smart Contract

1. Introduction

This project focuses on developing a simple blockchain-based donation application using Solidity. The project demonstrates how smart contracts can be used to manage donation campaigns, record contributions, and transfer collected funds to designated beneficiaries.

The selected use case is a donation campaign supporting forest fire response in Indonesia.

2. Problem Statement

Donation campaigns may face challenges in providing transparent records of collected contributions and ensuring that funds are transferred only to the designated beneficiary.

Donors need a way to verify donation records, while campaign organizers need a structured process for managing contributions and withdrawals.

3. Proposed Solution

CharityChain is a prototype smart contract designed to manage donation campaigns on a blockchain.

The contract allows an authorized owner to create and close campaigns, enables users to donate ETH, records contributions by campaign and donor address, and allows the designated beneficiary to withdraw collected funds.

Smart contract events provide additional transaction information that can be inspected during testing.

4. Project Workflow

 1. The contract owner creates a donation campaign.
 2. The campaign stores its name, description, beneficiary address, target amount, total donations, and active status.
 3. A donor sends ETH to an active campaign.
 4. The smart contract updates the campaign's total donations and the donor's contribution record.
 5. The designated beneficiary withdraws the collected funds.
 6. The contract emits events for campaign creation, donations, and withdrawals.

5. Technologies Used

 - Solidity
 - Remix IDE
 - Remix VM for local smart contract simulation
 - GitHub for source code and project documentation

6. Smart Contract Implementation

The main source file is "CharityChain.sol".

The contract includes the following functions:

 - "createCampaign()" — Creates a donation campaign.
 - "donate()" — Accepts ETH donations and records contributions.
 - "withdraw()" — Transfers the campaign's collected funds to its designated beneficiary.
 - "closeCampaign()" — Allows the contract owner to close an active campaign.

The contract also uses custom errors, access control checks, mappings, structs, and events to manage campaign operations.

7. Testing and Results

The contract was compiled and tested using Remix VM.

The following tests were performed:

 - Campaign creation was successful.
 - Campaign details and beneficiary information were verified.
 - A donation of 1 ETH was successfully processed.
 - The campaign's total donation amount and the donor's contribution record were verified.
 - A second 1 ETH donation was recorded, bringing the total to 2 ETH.
 - The designated beneficiary successfully withdrew the collected funds.
 - The campaign's "totalDonations" value was verified to be zero after withdrawal.
 - A withdrawal attempt by an account other than the designated beneficiary reverted with "InvalidBeneficiary()".

These tests confirmed that the main campaign, donation, withdrawal, and beneficiary authorization functions behaved as expected in the local simulation.

8. Learning Outcomes

Through this project, I learned how to:

 - Design and implement a blockchain-based application using Solidity.
 - Use structs and mappings to store campaign and donation information.
 - Receive and transfer ETH through smart contract functions.
 - Use events to record important contract activities.
 - Apply access control checks to restrict sensitive operations.
 - Test smart contract behavior and investigate transaction errors using Remix IDE.

9. Limitations

This project is an educational prototype tested in Remix VM. It has not been deployed to a public blockchain, independently audited, or integrated with a frontend application.

The campaign target amount is stored as campaign information but is not currently enforced as a fundraising limit. The contract also does not implement donor refunds.

Further development and security testing would be necessary before considering real-world deployment.

10. Conclusion

CharityChain demonstrates how a Solidity smart contract can support transparent donation records and controlled fund withdrawals.

The project provided practical experience in smart contract development, transaction testing, access control, and blockchain application design.

11. Source Code

The smart contract source code is available in this repository:

- "CharityChain.sol"          

Video Walkthrough

A video walkthrough demonstrating the deployment, donation process, withdrawal access control, and testing of the CharityChain smart contract is available below.

- Walkthrough Video: "CharityChain Task 4 Walkthrough" (./CharityChain_Task4_Syamsul_Febrizal.mp4)
- LinkedIn Post: "CharityChain Task 4 — LinkedIn" (https://www.linkedin.com/posts/syamsul-febrizal-561855412_skillzeno-solidity-blockchain-ugcPost-7520084367889653761-Z2Xh/?utm_source=share&utm_medium=member_desktop&rcm=ACoAAGkh-dkB9lX9byo5_h2O8HC-YD8T7JL_46k)
  
