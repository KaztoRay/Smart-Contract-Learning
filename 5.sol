// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract PointCounter {

    mapping (address => uint) public point;

    function add(address x) public {

        point[x] += 1;

    }

}