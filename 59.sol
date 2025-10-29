// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Callee {

    address public owner;

    function changeOwner(address addr) external {

        owner

    }

}

contract DelegateCaller {

    address public callee;

    constructor(address calleeAddr) {

        callee = calleeAddr;

    }

    function delegateCallFunction() external returns(bytes memory) {

        (bool ret, bytes memory data) = callee.delegatecall(abi.encodeWithSignature("changeOwner(address)", address(0)));
        require(ret, "delegatecall failed");
        return data;

    }

}