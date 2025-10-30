function _upgradeToAndCallSecure(address newImplementation, bytes memory data, bool forceCall) internal {
  address oldImplementation = _getImplementation();

  // Initial upgrade and setup call
  _setImplementation(newImplementation);
  if (data.length > 0 || forceCall) {
    Address.functionDelegateCall(newImplementation, data); // <<< 여기!
  }

  // Perform rollback test if not already in progress
  StorageSlot.BooleanSlot storage rollbackTesting = StorageSlot.getBooleanSlot(_ROLLBACK_SLOT);

  if (!rollbackTesting.value) {
    // Trigger rollback using upgradeTo from the new implementation
    rollbackTesting.value = true;
    Address.functionDelegateCall( // <<< 여기!
      newImplementation,
      abi.encodeWithSignature("upgradeTo(address)", oldImplementation)
    );

    rollbackTesting.value = false;

    // Check rollback was effective
    require(oldImplementation == _getImplementation(), "ERC1967Upgrade: upgrade breaks further upgrades");

    // Finally reset to the new implementation and log the upgrade
    _upgradeTo(newImplementation);
  }
}