// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NFT is ERC721 {
    constructor() ERC721("LearnWeb3's NFT", "Learn-NFT") {
        //Mint 2 NFT is ERC721

        _mint(msg.sender, 1);
        _mint(msg.sender, 2);
    }
}
