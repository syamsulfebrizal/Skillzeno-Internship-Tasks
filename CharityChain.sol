// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract CharityChain {
    address public owner;

    uint256 public campaignCount;

    struct Campaign {
        string name;
        string description;
        address payable beneficiary;
        uint256 targetAmount;
        uint256 totalDonations;
        bool active;
    }

    mapping(uint256 => Campaign) public campaigns;

    mapping(uint256 => mapping(address => uint256))
        public donations;

    event CampaignCreated(
        uint256 indexed campaignId,
        string name,
        address indexed beneficiary,
        uint256 targetAmount
    );

    event DonationReceived(
        uint256 indexed campaignId,
        address indexed donor,
        uint256 amount
    );

    event FundsWithdrawn(
        uint256 indexed campaignId,
        address indexed beneficiary,
        uint256 amount
    );

    error NotOwner();
    error InvalidBeneficiary();
    error InvalidTargetAmount();
    error CampaignNotActive();
    error InvalidDonation();
    error NoFundsAvailable();
    error TransferFailed();

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        if (msg.sender != owner) {
            revert NotOwner();
        }
        _;
    }

    function createCampaign(
        string calldata name,
        string calldata description,
        address payable beneficiary,
        uint256 targetAmount
    ) external onlyOwner {
        if (beneficiary == address(0)) {
            revert InvalidBeneficiary();
        }

        if (targetAmount == 0) {
            revert InvalidTargetAmount();
        }

        campaignCount++;

        campaigns[campaignCount] = Campaign({
            name: name,
            description: description,
            beneficiary: beneficiary,
            targetAmount: targetAmount,
            totalDonations: 0,
            active: true
        });

        emit CampaignCreated(
            campaignCount,
            name,
            beneficiary,
            targetAmount
        );
    }

    function donate(uint256 campaignId) external payable {
        Campaign storage campaign = campaigns[campaignId];

        if (!campaign.active) {
            revert CampaignNotActive();
        }

        if (msg.value == 0) {
            revert InvalidDonation();
        }

        campaign.totalDonations += msg.value;
        donations[campaignId][msg.sender] += msg.value;

        emit DonationReceived(
            campaignId,
            msg.sender,
            msg.value
        );
    }

    function withdraw(uint256 campaignId) external {
        Campaign storage campaign = campaigns[campaignId];

        if (!campaign.active) {
            revert CampaignNotActive();
        }

        if (msg.sender != campaign.beneficiary) {
            revert InvalidBeneficiary();
        }

        uint256 amount = campaign.totalDonations;

        if (amount == 0) {
            revert NoFundsAvailable();
        }

        campaign.totalDonations = 0;

        (bool success, ) = campaign.beneficiary.call{
            value: amount
        }("");

        if (!success) {
            revert TransferFailed();
        }

        emit FundsWithdrawn(
            campaignId,
            campaign.beneficiary,
            amount
        );
    }

    function closeCampaign(
        uint256 campaignId
    ) external onlyOwner {
        Campaign storage campaign = campaigns[campaignId];

        if (!campaign.active) {
            revert CampaignNotActive();
        }

        campaign.active = false;
    }
}
