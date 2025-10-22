(bool ret, bytes memory data) = callee.call(abi, encodingWithSignature("changeOwner(address)", address(this)));
(bool ret, bytes memory data)  callee.staticcall(abi.encodeWithSignature("getOwner()"));
(bool ret, bytes memory data) = callee.delegatecall(abi.encodeWithSignature("changeOwner(address)", address(this)));