// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface OnlyEOAContractInterface {

    function callme() external returns (bool);

}

contract Caller {

    function doCall(address addr) public returns (bool) {

        OnlyEOAContractInterface cont = OnlyEOAContractInterface(addr);

        return cont.callme();

    }

}