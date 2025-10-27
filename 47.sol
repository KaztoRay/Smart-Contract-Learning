// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ReferenceTypes {

    mapping(string => uint) v0;
    mapping(uint => mapping(uint => uint)) v1;

    constructor() {

        v0["Dreamhack"] = 0x1337;
        v1[0x13][0x37] = 0x31337;

    }

}