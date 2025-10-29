// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Proxy {

    bytes32 constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;

    struct AddressSlot {

        address value;

    }

    function setImplementation(address addr) public {

        getAddressSlot(_IMPLEMENTATION_SLOT).value = addr;

    }

    function getAddressSlot(bytes32 slot) internal pure returns (AddressSlot storage r) {

        assembly {

            r.slot := slot;

        }

    }

    fallback (bytes calldata data) external payable returns (bytes memory) {

        address addr = getAddressSlot(_IMPLEMENTATION_SLOT).value;
        (bool success, bytes memory ret) = addr.delegatecall(data);
        require(success, "Failed to delegatecall");
        return ret;
    }

}