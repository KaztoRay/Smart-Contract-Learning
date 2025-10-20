// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Solve {

    function test_value() public pure returns (uint8) {

        uint8 a = 1;
        uint8 b = 2;

        b = 2;

        return a;

    }

    function test_ref() public pure returns (uint8) {

        uint8[3] memory a = [1, 2, 3];
        uint8[3] memory b = a;

        b[1] = 7;

        return a[1];

    }

}