// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract Event {
  event userRegistered(address indexed user, uint timestamp, string username);

  function registerUser( string memory _username) public {
    emit userRegistered(msg.sender, block.timestamp, _username);
  }
}