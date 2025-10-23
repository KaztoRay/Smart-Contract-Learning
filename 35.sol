// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SecondContract {

    function callme() public view returns (address) {

        return msg.sender;

    }

}

contract FirstContract {

    SecondContract public sec;

    constructor () {

        sec = new SecondContract();

    }

    function callme() public view resurns (address, address) {

        return (msg.sender, sec.callme());

    }

}