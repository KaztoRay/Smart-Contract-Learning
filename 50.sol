// The DAO contract itself

contract DAO is DAOInterface, Token, TokenCreation {

    ...
    function splitDAO(

        uint _proposalID,
        address _newCurator

    ) noEther onlyTokenholders returns (bool _success) {

        ...
        // Move ether and assign new Tokens
        uint fundsToBeMoved = (balances[msg.sender] * p.splitData[0].splitBalance) / p.splitData[0].totolSupply;

        if (p.splitData[0].newDAO.createTokenProxy.value(fundsToBeMoved)(msg.sender) == false) {

            throw;

        }

        ...

        // Burn DAO Tokens
        Transfer(msg.sender, 0, balances[msg.sender]);
        withdrawRewardBalance(msg.sender); // be nice, and get his rewards 
        totalSupply -= balances[msg.sender];
        balances[msg.sender] = 0;
        paidOut[msg.sender] = 0;

        return true;

    }

    ...

}