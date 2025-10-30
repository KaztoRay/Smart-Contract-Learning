abstract contract UUPSUpgradeable is Initializable, IERC1822Proxiable {

    function proxiableUUID() external view virtual notDelegated returns (bytes32) {

        return ERC1967Utils.IMPLEMENTATION_SLOT;

    }

    function upgradeToAndCall(address newImplementation, bytes memory data) public payable virtual onlyProxy {

        _authorizeUpgrade(newImplementation);
        _upgradeToAndCallUUPS(newImplementation, data);

    }

    ...

    function _upgradeToAndCallUUPS(address newImplementation, bytes memory data) private {

       try IERC1822Proxiable(newImplementation).proxiableUUID() returns (bytes32 slot) {

            if (slot != ERC1967Utils.IMPLEMENTATION_SLOT) {

                revert UUPSUnsupportedProxiableUUID(slot);
            }

        } catch {

            // The implementation is not UUPS
            revert ERC1967Utils.ERC1967InvalidImplementation(newImplementation);
        
        }

    }

}