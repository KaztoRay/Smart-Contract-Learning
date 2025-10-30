function _fallback() internal virtual override {

    if (msg.sender == _proxyAdmin()) {

        if (msg.sig != ITransparentUpgradeableProxy.upgradeToAndCall.selector) {

            revert ProxyDeniedAdminAccess();

        } else {

            _dispatchUpgradeToAndCall();

        }

    } else {

        super._fallback();

    }

}

function _dispatchUpgradeToAndCall() private {

    (address newImplementation, bytes memory data) = abi.decode(msg.data[4:], (address, bytes));

    ERC1967Utils.upgradeToAndCall(newImplementation, data);

}