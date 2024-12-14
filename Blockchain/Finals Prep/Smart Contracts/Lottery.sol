// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Lottery {
    address payable[] public players;
    address public manager;
    uint256 public entryFee = 0.1 ether; // Set the entry fee
    uint256 public managerFeePercent = 10; // Manager's fee percentage
    uint256 public minPlayers = 3; // Minimum players required
    uint256 public maxPlayers = 100; // Max players limit (optional)

    struct Entry {
        uint256 amount;
        uint256 txId;
        uint256 entryCount; // Counts the number of entries for this player
    }

    mapping(address => Entry[]) public playerEntries; // Stores each player's entry history
    mapping(address => uint256) public entryCount; // Tracks number of entries per player
    address public mostFrequentPlayer; // Player with most entries

    event WinnerPicked(address indexed winner);

    constructor() {
        manager = msg.sender;
    }

    receive() external payable {
        require(msg.value == entryFee, "Each player must send exactly 0.1 ETH");
        require(msg.sender != manager, "Manager cannot participate in the lottery");
        require(players.length < maxPlayers, "Maximum number of players reached");

        // Increment the player's entry count
        entryCount[msg.sender]++;
        players.push(payable(msg.sender));

        // Record the player's entry with the current entry count
        playerEntries[msg.sender].push(
            Entry({
                amount: msg.value / 1 ether,
                txId: block.number,
                entryCount: entryCount[msg.sender]
            })
        );

        // Update most frequent player if necessary
        if (entryCount[msg.sender] > entryCount[mostFrequentPlayer]) {
            mostFrequentPlayer = msg.sender;
        }
    }

    function getBalance() public view returns (uint256) {
        require(msg.sender == manager, "Only the manager can view the contract balance");
        return address(this).balance;
    }

    function random() private view returns (uint256) {
        return uint256(keccak256(abi.encodePacked(block.timestamp, players.length)));
    }

    function pickWinner() public {
        require(players.length >= minPlayers, "At least 3 players required to pick a winner");

        require(
            (players.length >= minPlayers && players.length < 10 && msg.sender == manager) || 
            (players.length >= 10),
            "Only the manager can pick a winner with players between minPlayers and 10, or anyone with 10 or more players."
        );

        address payable winner = players[random() % players.length];

        // Calculate prize and manager's fee
        uint256 prizeAmount = (address(this).balance * (100 - managerFeePercent)) / 100;
        uint256 feeAmount = address(this).balance - prizeAmount;

        // Clear the player list before transferring funds
        delete players;

        winner.transfer(prizeAmount);
        payable(manager).transfer(feeAmount);

        emit WinnerPicked(winner);
    }

    // Function to get the most frequent player and their transaction history
    function getMostFrequentPlayerTransactions() public view returns (address, Entry[] memory) {
        return (mostFrequentPlayer, playerEntries[mostFrequentPlayer]);
    }

    function setManagerFeePercent(uint256 _feePercent) public {
        require(msg.sender == manager, "Only the manager can change the fee");
        require(_feePercent <= 100, "Fee percentage cannot exceed 100%");
        managerFeePercent = _feePercent;
    }

    function setMinPlayers(uint256 _minPlayers) public {
        require(msg.sender == manager, "Only the manager can change the minimum number of players");
        minPlayers = _minPlayers;
    }

    function setMaxPlayers(uint256 _maxPlayers) public {
        require(msg.sender == manager, "Only the manager can change the maximum number of players");
        maxPlayers = _maxPlayers;
    }
}
