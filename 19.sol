// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Callee {

    address public owner;

    function changeOwner(address addr) external {

        owner = addr;

    }
}