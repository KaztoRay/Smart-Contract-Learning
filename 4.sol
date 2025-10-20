// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract AnswerStorage {

    struct Answer {

        uint input;
        uint output;

    }

    Answer[] public stored;

    function submit(uint x, uint y) public returns (bool) {

        if (x * x == y) {

            Answer memory newAnswer;

            newAnswer.input = x;
            newAnswer.output = y;

            stored.push(newAnswer);

            return true;

        }

        return false;

    }

    function lastAnswer() public view returns (uint, uint) {

        require(stored.length != 0, "Empty");

        Answer storage latest = stored[stored.length - 1];

        return (latest.input, latest.output);

    }

}