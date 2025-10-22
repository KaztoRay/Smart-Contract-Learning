// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Callee {

    address public owner;

    function changeOwner(address addr) external {

        owner = addr;
    
    }

}

contract StaticCaller {

    address public callee;

    constructor(address calleeAddr) {

        callee = calleeAddr;

    }

    function staticcallFunction() external view returns(bytes, memory) {

        (bool ret, bytes memory data) = callee.staticcall(abi.encodeWithSignature("owner()"));
        require(ret, "staticcall failed");
        return data;

    }

    function staticcallWithError() external view returns(bytes memory) {

        (bool ret, bytes memory data) = callee.staticcall(abi.encodeWithSignature("changeOwner(address)", address(0)));
        require(ret, "staticcall failed");
        return data;

    }

}