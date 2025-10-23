// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract UncheckedGasDifference {

    function uncheckedAdd(int8 num1, int8 num2) public pure returns (int8) {

        unchecked {

            return num1 + num2;

        }

    }

    function add(int8 num1, int8 num2) public pure returns (int8) {

        return num1 + num2;

    }

}