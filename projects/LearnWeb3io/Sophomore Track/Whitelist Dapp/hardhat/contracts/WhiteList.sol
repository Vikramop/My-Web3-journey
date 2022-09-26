// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;

// Deployed at "0x8E9223FdA24A67D5675C99f16FF15dBb38d79827" on georli testnet.

contract WhiteList {
    uint8 public maxWhitelistAddresses;

    mapping(address => bool) public whitelistedAddresses;

    uint8 public numAddressesWhitelisted;

    constructor(uint8 _maxWhitelistAddresses) {
        maxWhitelistAddresses = _maxWhitelistAddresses;
    }

    /**
        addAddressToWhitelist - This function adds the address of the sender to the
        whitelist
     */

    function addAddressToWhitelist() public {
        // check if the user has already been whitelisted
        require(
            !whitelistedAddresses[msg.sender],
            "Sender has already been whitelisted"
        );

        // check if the numAddressesWhitelisted < maxWhitelistedAddresses, if not then throw an error.
        require(
            numAddressesWhitelisted < maxWhitelistAddresses,
            "More address can't be added, limit reached"
        );

        // Add the address which called the function to the whitelistedAddress array
        whitelistedAddresses[msg.sender] = true;

        // Increase the number of whitelisted addresses
        numAddressesWhitelisted += 1;
    }
}
