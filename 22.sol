// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Callee {

    address public owner;

    function changeOwner(address addr) external {

        owner = addr;

    }

    function receiveEther() external payable {

        require(msg.value != 0, "msg.value cannot be zero");

    }

    fallback() external {}
    receive() external payable {}

}

contract Caller {

    address public callee;

    constructor(address calleeAddr) {

        callee = calleeAddr;

    }

    function callFunction() external returns(bytes memory) {

        (bool ret, bytes memory data) = callee.call(abi.encodeWithSignature("changeOwner(address)", address(this)));
        require(ret, "call failed");
        return data;

    }

    function callSendEther() external payable returns(bytes memory) {

        (bool ret, bytes memory data) = callee.call{value: msg.value}("");
        require(ret, "call failed");
        return data;

    }

    function callSendEtherWithGasLimit() external payable returns(bytes memory) {

        (bool ret, bytes memory data) = callee.call{value: msg.value, gas: 10000}(abi.encodeWithSignature("receiveEther()"));
        require(ret, "call failed");
        return data;

    }

}