// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract VendingMachine {
    address public owner;
    mapping(address => uint256) public donutQty;
    uint256 internal pricePerDonut;

    // Struct to store information about each purchase
    struct Purchase {
        uint256 purchaseAmount;
        uint256 timestamp;
    }

    // Mapping of each user's address to their purchase history
    mapping(address => Purchase[]) private purchaseHistory;

    // using address type to store the Eth address of the owner
    // set the owner as the address that deployed the contract
    // set the initial vending machine balance to 100.
    // This is the total number of donuts we initially put in the vending machine
    constructor(uint256 passedPrice) {
        owner = msg.sender;
        donutQty[address(this)] = 100; // number of donuts in the vending machine
        pricePerDonut = passedPrice * 1 ether; // Set pricePerDonut based on passed price
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    // View functions ensure that they will not modify the blockchain state
    // this returns the qty of donuts for the given address
    function getNumOfDonutInMachine() public view returns (uint256) {
        return donutQty[address(this)];
    }

    function restockMachine(uint256 amount) public onlyOwner {
        require(msg.sender == owner, "Only the owner can restock this machine");
        donutQty[address(this)] += amount;
    }

    // payable keyword is used for any function that should receive some ether
    // msg.value: The value of ether sent with this call (in wei)
    function purchaseDonut(uint256 qty) public payable {
        uint256 totalCost = qty * pricePerDonut;
        require(
            msg.value >= totalCost,
            "Insufficient payment; each donut costs more."
        );
        require(
            donutQty[address(this)] >= qty,
            "Not enough donuts in stock to complete this purchase."
        );

        donutQty[address(this)] -= qty;
        donutQty[msg.sender] += qty;

        // Record purchase in purchase history
        purchaseHistory[msg.sender].push(Purchase({
            purchaseAmount: totalCost / 1 ether,
            timestamp: block.timestamp
        }));
    }

    // Task 2: Change price method, Ensure that the machine owner can only access this method
    function changePriceDonut(uint256 newPrice) public onlyOwner {
        require(msg.sender == owner, "Only the owner can change the price");
        pricePerDonut = newPrice * 1 ether;
    }

    function getDonutPrice() public view returns (uint256) {
        return pricePerDonut / 1 ether;
    }

    // Task 3: Get purchase array, update Donut Purchase function
    // Retrieve purchase history for a user
    function getUserPurchases(address user) public view returns (Purchase[] memory) {
        return purchaseHistory[user];
    }
}
