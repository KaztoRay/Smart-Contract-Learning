contract UUPSUpgradeable {

    address private immutable __self = address(this);

    modifier onlyProxy() {

        require(address(this) != __self, "Function must be called through delegatecall");

        require(_getImplementation() == __self, "Function must be called through active proxy");

        _;

    }

}