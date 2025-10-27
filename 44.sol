// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ReferenceTypes {

    struct Struct {

        uint x;
        uint y;

    }

    uint v0;

    Struct v1;
    Struct v2;

    uint v3;

    constructor() {

        v0 = 0x31337;
        v1.x = 0x1337;
        v2.y = 0x337;
        v3 = 0x37;

    }

}
