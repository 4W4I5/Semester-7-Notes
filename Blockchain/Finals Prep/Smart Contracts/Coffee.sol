// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// Importing ERC20 standard implementation and access control modules
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

/**
 * @title CoffeeToken
 * @dev A custom ERC20 token with roles and functionality for buying coffee
 * by burning tokens.
 */
contract CoffeeToken is ERC20, AccessControl {
    // Role identifier for accounts allowed to mint new tokens
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    // Event emitted when a coffee purchase occurs
    event CoffeePurchased(address indexed receiver, address indexed buyer);

    /**
     * @dev Constructor sets up the token and assigns roles.
     * - Deploying address gets admin and minter roles.
     */
    constructor() ERC20("CoffeeToken", "CFE") {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender); // Assign admin role
        grantRole(MINTER_ROLE, msg.sender); // Assign minter role
    }

    /**
     * @dev Mints new tokens to the specified address.
     * - Restricted to accounts with MINTER_ROLE.
     */
    function mint(address to, uint256 amount) public onlyRole(MINTER_ROLE) {
        _mint(to, amount);
    }

    /**
     * @dev Burns one token from the caller's balance to "buy a coffee."
     * - Emits CoffeePurchased event.
     */
    function buyOneCoffee() public {
        _burn(_msgSender(), 1); // Burn one token from caller
        emit CoffeePurchased(_msgSender(), _msgSender()); // Log event
    }

    /**
     * @dev Burns one token from another account's balance using allowance.
     * - Caller must have allowance to spend tokens from the specified account.
     * - Emits CoffeePurchased event.
     */
    function buyOneCoffeeFrom(address account) public {
        _spendAllowance(account, _msgSender(), 1); // Deduct allowance
        _burn(account, 1); // Burn one token from the account
        emit CoffeePurchased(_msgSender(), account); // Log event
    }
}
