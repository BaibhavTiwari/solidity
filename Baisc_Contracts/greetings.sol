// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract greeting{
  string public greetingMessage;

  constructor (string memory _initialGreeting)
  {
    greetingMessage = _initialGreeting;
  }

  function setGreeting(string memory _newGreeting) public
  {
    greetingMessage = _newGreeting;
  }

  function getGreeting() public view returns (string memory)
  {
    return greetingMessage;
  }
}