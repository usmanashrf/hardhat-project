// SPDX-License-Identifier: UNLICENSE
pragma solidity ^0.8.9;

//Import hardhat console
import "hardhat/console.sol";

contract MyContract {

    // uint256 public unlockedTime;
    // address payable public owner;

    // event widthrawal (uint256 amount, uint256 when);

    // constructor(uint256 _unlockedTime) payable {
    //     require(block.timestamp < _unlockedTime,"unlocked time should be in future");

    //     unlockedTime = _unlockedTime;
    //     owner = payable(msg.sender);
    // }

    // function widthdraw() public{
    //     require(block.timestamp >= unlockedTime,"wait till the time period completed");
    //     require(msg.sender == owner,"you are not the owner");

    //     emit widthrawal(address(this).balance,block.timestamp);
    //     owner.transfer(address(this).balance);
    // }
    function add(uint256 x, uint256 y) public pure returns (uint256){
        return x + y;
    }
    
    function subtract(uint256 x, uint256 y) public pure returns (uint256){
        return x - y;
    }
}
