// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Contract {

    uint immutable a;
    address lastSender;
    bytes lastData;

    constructor (uint value) {

        a = value;

    }

    receive() external payable {

        lastSender = msg.sender;

    }

    fallback (bytes calldata input) external returns (bytes memory output) {

        lastData = input;

        return input;

    }

}