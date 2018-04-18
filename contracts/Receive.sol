pragma solidity ^0.4.18;
import "./ContractReceiver.sol";

// KNOW Token by Kryptono Limited.
// An ERC223 standard
//
// author: Kryptono Team
// Contact: William@kryptono.exchange

contract Receive is ContractReceiver {
    uint256 public a = 0; 
    function increase(uint256 value)
    external {
        require(msg.sender == address(this));
        a = a+value;
    }
}