// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract UnsignedIntErrorHandle {

    function add(uint8 num1, uint8 num2) external pure returns (uint8) {

        uint8 result = num1 + num2;
        
        // 1. `assert`
        assert(result >= num1);

        // 2. `require`
        require(result >= num1, "Addition overflow");

        // 3. `revert`
        if (result < num1) {
        
            revert("Addition overflow");
        
        }

        return result

    }

    function sub(uint8 num1, uint8 num2) external pure returns (uint8) {

        // 1. `assert`
        assert(num2 <= num1);

        // 2. `require`
        require(num2 <= num1, "Err : overflow");

        // 3. `revert`
        if (num2 > num1) {

            revert("Err : underflow");

        }

        uint8 result = num1 - num2;

        return result;


    }

}