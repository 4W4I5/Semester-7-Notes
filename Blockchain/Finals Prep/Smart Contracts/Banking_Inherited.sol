// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Banking_Contract.sol";

contract InheritedBank {
    // Declare an array of Bank contract instances
    Bank[] public importedContractAddr;

    // Create multiple Bank contracts based on input size
    function createMultipleBankContracts(uint256 numberOfBanks) public {
        for (uint256 i = 0; i < numberOfBanks; i++) {
            Bank newBank = new Bank();
            importedContractAddr.push(newBank);
        }
    }
}
