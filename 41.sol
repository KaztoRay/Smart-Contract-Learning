// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract OnlyOwnerContract {

    address public owner;

    modifier onlyOwner() {

        require(msg.sender == owner, "Not Owner");

        _;

    }

    constructor() {

        owner = msg.sender;

    }

    function callme onlyOwner external view returns (string memory) {

        return "Hi, admin!";

    }
    
}