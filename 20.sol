// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract CalleeInterface {

    function changeOwner(address) external;

}

contract Caller {

    CalleeInterface callee;

    constructor(address addr) {

        callee = CalleeInterface(addr);

    }

    function callCallee() public {

        callee.changeOwner(address(this));

    }

}