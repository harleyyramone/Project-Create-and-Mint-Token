# Project-Create-and-Mint-Token
This project entails developing a customized ERC20 token in Solidity and deploying it on the Ethereum network using Remix. The coin will have features that allow the contract owner to create new tokens and any user to burn tokens. The project's goal is to give a full knowledge of ERC20 tokens and their implementation utilizing OpenZeppelin's framework.


## Description

The smart contract, built in Solidity, makes use of OpenZeppelin's ERC20 and Ownable contract types. It defines a token called "MyToken" with the symbol "MTK". The contract constructor initializes the token and designates the deployer as its owner. The mint function enables the owner to generate new tokens and assign them to any address, hence raising the overall supply. The burn feature allows any user to destroy their tokens, which reduces the overall supply. These functions rely on internal mechanisms from OpenZeppelin's ERC20 implementation to provide safe and standard-compliant operations. The contract is deployed and tested with Remix IDE and MetaMask for transaction confirmations.



## Getting Started

### Executing program

To execute this program, you may use Remix, an online Solidity IDE; to get started, go visit https://remix.ethereum.org/.

Once on the Remix website, click the "+" symbol in the left-hand sidebar to create a new file. Save the file as HelloWorld.sol. Copy and paste the code below into the file.

```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
    constructor() ERC20("MyToken", "MTK") Ownable(msg.sender) {}

    // Mint function that can only be called by the owner
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Burn function that can be called by any user
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}

```


To compile the code, select the "Solidity Compiler" tab from the left sidebar. Set the "Compiler" option to "0.8.18" (or any suitable version), then click the "Compile HelloWorld.sol" button.

Once the code has been built, you can deploy the contract by selecting the "Deploy & Run Transactions" tab in the left-hand sidebar. Choose the "HelloWorld" contract from the dropdown menu, and then click the "Deploy" button.

Once the contract has been deployed, you can interact with it by using the sayHello method. Click the "HelloWorld" contract in the left-hand sidebar, followed by the "sayHello" function. Finally, click the "transact" button to call the function and get the "Hello World!" message.
## Authors

Metacrafter Student Harley Ramone Tesorero
[@harleyramonee](https://twitter.com/harleyramonee)


## License

This project is licensed under the Harley Ramone Tesorero License - see the LICENSE.md file for details
