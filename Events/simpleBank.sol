// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract SimpleBank {
    mapping(address => uint) public balances;

    event Deposit(address indexed account, uint amount);
    event Withdraw(address indexed account, uint amount);

    function deposit() public payable {
        require(msg.value > 0, "Must send some Ether");
        balances[msg.sender] += msg.value;
        emit Deposit(msg.sender, msg.value);
    }

    function withdraw(uint _amount) public {
        require(balances[msg.sender] >= _amount, "Insufficient balance");
        balances[msg.sender] -= _amount;
        payable(msg.sender).transfer(_amount);
        emit Withdraw(msg.sender, _amount);
    }
}
