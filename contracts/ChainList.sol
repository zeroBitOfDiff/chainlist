// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract ChainList {
    // state variables
    address seller; 
    string name;
    string description;
    uint256 price;

    // sell an article
    // sets our state variables
    // we pull sender from msg object
    function sellArticle(string memory _name, string memory _description, uint256 _price) public{
        seller = msg.sender;
        name = _name;
        description = _description;
        price = _price;
    }

    // get an article
    // does not modify state so we use view to make free
    function getArticle() public view returns(
        address _seller,
        string memory _name,
        string memory _description,
        uint256 _price
    ){
        return(seller, name, description, price);
    }
}
// pure is a flag like view but can't access objects
// it is used for things like calculations