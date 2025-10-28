// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Reentrancy {

    mapping(address => uint) balance;

    // ...

    function withdraw(uint amount) external {

        if (balance[msg.sender] >= amount) {

            (bool result,) = msg.sender.call{value: amount}
            require(result, "Call failed");
            balance[msg.sender] -= amount;

        }

    }

}