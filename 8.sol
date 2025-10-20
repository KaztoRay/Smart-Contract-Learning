// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Parent {

    uint internal result = 1;

    function getResult() virtual public returns (uint) { 

        return result;

    }

}

contract Child is Parent {

    function getResult() virtual public override returns (uint) {

        return super.getResult();

    }

}