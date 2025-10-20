// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Base {

    uint internal result = 1;

    function getResult() virtual public returns (uint) {

        return result;

    }

}

contract Middle1 is Base {

    function getResult() virtual public override returns (uint) {

        return super.getResult();

    }

}

contract Middle2 is Base {

    function getResult() virtual public override returns (uint) {

        return super.getResult() + 1;

    }

}

contract Derived is Middle1, Middle2 {

    function getResult() public override(Middle1, Middle2)) returns (uint) {

        return super.getResult();

    }

}