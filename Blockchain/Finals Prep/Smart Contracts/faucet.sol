// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.10 <=0.4.26;



// our first contract is a faucet!
contract Faucet {
    // Give out ether to anyone who asks
    function withdraw(uint256 withdraw_amount) public {
        // Limit withdrawal amount
        require(withdraw_amount <= 100000000000000000);

        // Console.log
        //   if (withdraw_amount > 100000000000000000){
        //         console.log("Cannot withdraw, exceeded amount");
        // } else {
        //    console.log("Account withdrew from Faucet");
        //}

        // Send the amount to the address that requested it
        msg.sender.transfer(withdraw_amount);
    }

    // Accept any incoming amount
    function() public payable {}
}
