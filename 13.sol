// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SimpleOwnableWithModifier {

    address constant public owner = address(0x1234);

    modifier onlyOwner() {

        require(msg.sender == owner, "No hack");

        -;

    }

    function destroy() external onlyOwner {

        selfdestruct(payable(msg.sender));

    }

}