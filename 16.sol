// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ClienntReceipt {

    event Deposit(

        address indexed from,
        bytes32 indexed id,
        uint value

    );

    function deposit(byte32 id) public payable {

        emit Deposit(msg.sender, id, msg.value);

    }

}

