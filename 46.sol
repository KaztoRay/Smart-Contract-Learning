// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract BytesAndString {

    bytes v0;
    string v1;
    bytes v2;

    constructor() {

        v0 = "\x01\x02\x03\x04";
        v1 = "Dreamhack";
        v2 = new bytes(32);

        for (uint8 i = 0; i < 32; i++) {

            v2[i] = bytes1(i);

        }

    }

}