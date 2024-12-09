// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Variables {
    uint public stateVar = 42;

    function setLocalVariable() public pure returns (uint)
    {
        uint localVar = 10;
        return localVar + 5 ;
    }
}