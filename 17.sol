// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

error InsufficientBalance(uint256 available, uint256 required);

contract TestToken {

    mapping(address -> uint) balance;

    function transfer(address to, uint256 amount) public {

        if (amount > balance[msg.sender]) {

            revert InsufficientBalance({

                available: balance[msg.sender],
                required: amount

            });

            balance[msg.sender] -= amount;
            balance[to] += amount;

        }

    }

}