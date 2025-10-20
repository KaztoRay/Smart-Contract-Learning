// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

uint constant outsideValue = 12341234;

contract Constants {

    string constant text = "Dreamhack";
    uint immutable x;
    uint constant y = 123;

    constructor () {

        x = 0x456;

    }

}