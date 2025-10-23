// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.4.2/contracts/math/SignedSafeMath.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.4.2/contracts/math/SafeMath.sol";

contract SafeMathCalc {

    using SignedSafeMath for int256;
    using SafeMath for uint256;

    function signedAdd(int256 num1, int256 num2) public pure returns (int256) {

        return num1.add(num2);

    }

    function signedSub(int256 num1, uint256 num2) public pure returns (int256) {

        return num1.sub(num2);

    }

    function unsignedAdd(uint256 num1, uint256 num2) public pure returns (uint256) {

        return num1.add(num2);

    }

    function unsignedSub(uint256 num1, uint256 num2) public pure returns (uint256) {

        return num1.sub(num2);

    }


}