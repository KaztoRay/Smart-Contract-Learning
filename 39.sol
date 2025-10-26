// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract OnlyEOAContract {

    modifier OnlyEOA() {

        require(msg.sender == tx.origin, "Not EOA");
        _;

    }

    function callme() public OnlyEOA external view returns (bool) {

        return true;

    }

}