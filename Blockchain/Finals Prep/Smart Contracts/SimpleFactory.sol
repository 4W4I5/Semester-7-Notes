// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";
contract StorageFactory{
    // ContractNameType ViewSpecifier ContractVariableName
    SimpleStorage public importedContractAddr;

    function createSimpleStorageContract() public{
        // Import all contract methods
        importedContractAddr = new SimpleStorage();
    }
}