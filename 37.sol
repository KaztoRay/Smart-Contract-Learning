// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Wallet {

    address public owner;

    constructor() payable {

        owner = msg.sender;

    }

    receive() external payable {}

    function transfer(address payable to, uint256 amount) public {

        require(tx.origin == owner, "No owner");
        to.transfer(amount);

    }

}