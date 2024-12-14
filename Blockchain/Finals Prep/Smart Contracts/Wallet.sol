// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Wallet {
    address payable public owner;
    address user;

    constructor(){
        owner=payable(msg.sender);
    }

    receive() external payable { }

    function withdraw(uint256 amount)external {
        string memory errorStr = "Only the ownder can call this method";
        require(msg.sender == owner, errorStr);
        payable(msg.sender).transfer(amount * 1 ether);
    }

    function getWalletBalance() external view returns(uint256){
        return address(this).balance / 1 ether;
    }
}