// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract IndexedEvent{
  event transfer(address indexed from, address indexed to, uint256 amount);

  function transferFunds(address _to, uint256 _amount) public {
    emit transfer(msg.sender, _to, _amount);
  }
}