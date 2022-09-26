// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// Note that it will show error in VS code so better do in remix ide, or download openzepplin from their website.

contract LearnWeb3 is ERC20 {
    constructor(string memory _name, string memory _symbol)
        ERC20(_name, _symbol)
    {
        _mint(msg.sender, 1000 * (10**18));
    }
}
