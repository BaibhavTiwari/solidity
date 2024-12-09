// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Marketplace {
    // State variables
    address public owner;
    uint public itemCount;
    mapping(uint => Item) public items;

    // Struct to represent an item
    struct Item {
        uint id;
        string name;
        uint price;
        address payable seller;
        bool sold;
    }

    // Events for logging
    event ItemListed(uint id, string name, uint price, address seller);
    event ItemSold(uint id, address buyer);

    // Constructor to set the owner
    constructor() {
        owner = msg.sender;
    }

    // Function to list an item for sale
    function listItem(string memory _name, uint _price) public {
        require(_price > 0, "Price must be greater than zero");
        itemCount++;
        items[itemCount] = Item(itemCount, _name, _price, payable(msg.sender), false);
        emit ItemListed(itemCount, _name, _price, msg.sender);
    }

    // Function to buy an item
    function buyItem(uint _id) public payable {
        Item storage item = items[_id];
        require(_id > 0 && _id <= itemCount, "Item does not exist");
        require(!item.sold, "Item already sold");
        require(msg.value >= item.price, "Not enough Ether");

        item.seller.transfer(item.price);
        item.sold = true;
        emit ItemSold(_id, msg.sender);
    }
}
