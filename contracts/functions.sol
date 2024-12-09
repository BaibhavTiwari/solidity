// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract functions{
    uint public count;

    function increment() public{
        count += 1;
    }

    function getCount() public view returns(uint){
        return count;
    }

    function add(uint a, uint b) public pure returns(uint){
        return a+b;
    }
    function receiveEther() public  payable {

    }
}