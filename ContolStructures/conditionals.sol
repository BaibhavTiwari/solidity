// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract conditionals{
  uint public storedValue;

  function setStoredValue (uint _value) public{
    if(_value > 100){
        storedValue = 100;
    } else if (_value <10){
      storedValue = 10;
    } else {
      storedValue = _value;
    }
  }
}


