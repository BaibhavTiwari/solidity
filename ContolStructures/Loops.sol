// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

//--------------------------------------------------------------//

contract whileLoop {
  uint public Sum;

  function calculateSum(uint _value) public{
    uint i = 0;
    while(i < _value){
      Sum += i;
      i++;
    }
  }
}

//--------------------------------------------------------------//

contract doWhileLoop{
  uint public count;
  function increment(uint _limit) public{
    do{
      count++;
    }while(count< _limit);
  }
}