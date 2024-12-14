// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage{
    uint256 public myFavNumber;

    function store(uint newFavNumber) public{
        myFavNumber = newFavNumber;
    }

    function getFavNumber() public view returns(uint256){
        return myFavNumber;
    }
}