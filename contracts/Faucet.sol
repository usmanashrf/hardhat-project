// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Faucet {
  address public owner;

  constructor() {
    owner = msg.sender;
  }

  event FallbackCalled(address);
  
  function withdraw(uint _amount) payable public {
    // users can only withdraw .1 ETH at a time, feel free to change this!
    require(_amount <= 100000000000000000);
    (bool sent, ) = msg.sender.call{value: _amount}("");
    require(sent, "Failed to send Ether");
  }

  function withdrawAll() onlyOwner public {
    (bool sent, ) = owner.call{value: address(this).balance}("");
    require(sent, "Failed to send Ether");
  }

  function destroyFaucet() onlyOwner public {
    selfdestruct(payable(owner));
  }

  //  function will be invoked if msg contains no matching calldata
  receive() external payable {
    emit FallbackCalled(msg.sender);
  }

  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }
}
