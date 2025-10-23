// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SecondContract {

    function callme() public view returns (address) {

        return tx.origin

    }

}

contract FirstContract {

    SecondContract public sec;

    constructor () {

        sec = new SecondContract();

    }

    function callme public view returns (address, address) {

        return (tx.origin, sec.callme());

    }

}