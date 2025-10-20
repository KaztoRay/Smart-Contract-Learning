// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ValueTypes {

    // booleans
    bool public boo = true;

    //Integers
    uint8 public u8 = 1;
    uint256 public u256 = 123;
    uint public u = 456;
    int8 public i8 = -1;

    // minimum and maximum of int
    int256 public minInt = type(int).min;
    int public maxInt = type(int256).max;

    // Fixed-size byte arrays
    bytes1 a = 0xb5; // [10110101]
    bytes1 b = 0x56; // [01010110]

    // Default values
    // Unassigned variables have a default value
    bool public defaultBoo; // false
    uint public defaultUint; // 0
    int public dedaultInt; // 0
    address public defaultAddress; // 0x000000000000000000000000000

}