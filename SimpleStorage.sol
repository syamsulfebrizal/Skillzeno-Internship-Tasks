// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title SimpleStorage
/// @author Syamsul febrizal
/// @notice A simple smart contract to storage and retrieve a number.
/// @dev Only the contract owner can update the stored number.
contract SimpleStorage {
    address public immutable owner;

    uint256 private storedNumber;

    event NumberUpdated(
        uint256 oldNumber,
        uint256 newNumber,
        address indexed updateBy
    );

    error NotOwner();
    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        if (msg.sender != owner) {
            revert NotOwner();
        }
        _;
    }

    /// @notice Update the stored number.
    /// @param _number The new number to store.
    function setNumber(uint256 _number) external onlyOwner {
        uint256 oldNumber = storedNumber;
        storedNumber = _number;

        emit NumberUpdated(oldNumber, _number, msg.sender);
    }

    /// @notice Returns the currently stored number.
    /// @return The stored number.
    function getNumber() external view returns (uint256) {
        return storedNumber;
    }
}
