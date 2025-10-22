// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SignedIntErrorHandle {

    function add(int8 num1, int8 num2) external pure returns (int8) {

        int8 result = num1 + num2;

        // 1. `assert`
        assert((num2 >= 0 && result >= num1) || (num2 < 0 && result < num1));

        // 2. `require`
        require((num2 >= 0 && result >= num1) || (num2 < 0 && result < num1), "Err : overflow");

        // 3. `revert`
        if ((num2 >= 0 && result < num1) || (num2 < 0 && result >= num1)) {

            revert("Err : overflow");

        }

        return result;

    } 

    function sub((int8 num1, int8 num2) external pure returns (int8) {

        int8 result = num1 - num2;

        // 1. `assert`
        assert((num2 >= 0 && result <= num1) || (num2 < 0 && result > num1));

        // 2. `require`
        require((num2 >= 0 && result <= num1) || (num2 < 0 && result > num1), "Err : overflow");

        // 3. `revert`
        if ((num2 >= 0 && result > num1) || (num2 < 0 && result <= num1)) {

            revert("Err : overflow");

        }

        return result;

    })

}