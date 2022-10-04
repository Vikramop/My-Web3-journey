//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.7;

// deployed :
//  on goerli: "0xD23e54d7F00bB607e5EbcCBdf2e7DfA2ca437C48"
//  on polygon:"0x8E9223FdA24A67D5675C99f16FF15dBb38d79827"

contract Verify {
    string private greeting;

    constructor() {}

    function hello(bool sayHello) public pure returns (string memory) {
        if (sayHello) {
            return "hello";
        }
        return "";
    }
}
