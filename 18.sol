// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface Callee { function call() external returns (uint);}

contract FeedConsumer {

    Callee callee;

    uint errorCount;

    function callCallee() public returns (bool, uint) {

        try callee.call() returns (uint v) {

            return (true, v);

        }

        catch Error (string memory reason) {

            errorCount++;
            return (false, 0);

        }

        catch Panic (uint /*code */) {

            errorCount++;
            return (false, 1;

        }

        catch (bytes memory /*lowLevelData */) {

            errorCount++;
            return (false, 2);

        }

    }

}