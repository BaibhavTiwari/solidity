// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract ForLoop {
  uint[] public numbers;

  function addNumbers(uint _limit) public{
    for(uint i=0;i<_limit;i++){
      numbers.push(i);
    }
  }
}

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