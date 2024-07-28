// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
    // Event to log transfers
    event TokensTransferred(address indexed from, address indexed to, uint256 value);

    // Constructor that sets the token name, symbol, and the owner
    constructor() ERC20("MyToken", "MTK") Ownable() {}

    // Mint function that can only be called by the owner
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Burn function that can be called by any user
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    // Override the transfer function to add custom logic
    function transfer(address to, uint256 amount) public override returns (bool) {
        bool success = super.transfer(to, amount); // Call the original transfer function
        if (success) {
            emit TokensTransferred(msg.sender, to, amount); // Log the transfer event
        }
        return success;
    }
}
