// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Contract {

    uint[] data = [0x1337];

    function useMemory() public returns (uint) {

        uint[] memory x = data;

        x[0] += 0x1337;

        return x[0];

    }

    function useStorage() public returns (uint) {

        uint[] storage x = data;

        x[0] += 0x1337;

        return x[0];

    }

    function checkFirstElement() public view returns (uint) {

        return data[0];

    }
}