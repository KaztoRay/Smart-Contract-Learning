// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract DivideByzeroHandle {

    function div(uint8 num1, uint8 num2) public pure returns (uint8) {

        assert(num2 != 0);

        require(num2 != 0, "Err : divide by zero");

        if (num2 == 0) {

            revert("Err : divide by zero");

        }

        uint8 result = num1 / num2;

        return result;

    }

}