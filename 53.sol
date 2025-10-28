modifier nonReentrant() {
    
    // On the first call to nonReentrant, _status will be _NOT_ENTERED
    if (_status == _ENTERED) {
        
        revert ReentrancyGuardReentrantCall();
    
    }

    // Any calls to nonReentrant after this point will fail
    _status = _ENTERED;

    _;

    // By storing the original value once again, a refund is triggered (see
    // https://eips.ethereum.org/EIPS/eip-2200)
    _status = _NOT_ENTERED;

}