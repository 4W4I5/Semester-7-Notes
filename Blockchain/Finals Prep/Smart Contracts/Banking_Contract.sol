// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract Bank {
    // Mapping to store the balance of each user
    mapping(address => uint) public balances;

    
    
    function deposit() public payable returns (uint) {
        require(msg.value > 0, "Deposit amount must be greater than zero");
        balances[msg.sender] += msg.value;
        return balances[msg.sender];
    }


    function withdraw(uint amount) public {
        amount = amount * 1 ether; 
        require(amount > 0, "Withdrawal amount must be greater than zero");
        require(balances[msg.sender] >= amount, "Insufficient funds");

        balances[msg.sender] -= amount;

        // Transfer the amount to the user
        (bool sent, ) = msg.sender.call{value: amount}("");
        require(sent, "Failed to complete withdrawal");
    }

    
    
    function getBalance() public view returns (uint) {
        return balances[msg.sender];
    }

    
    receive() external payable {
        balances[msg.sender] += msg.value;
    }
}
