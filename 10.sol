// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Callee {

    uint public data = 42;

}

contract Caller {

    Callee callee = new Callee();

    function f() public view returns (uint) {

        return callee.data();

    }

}
