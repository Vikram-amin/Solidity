// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


// inheritabce
// factories
// Interraction

contract myContract {
    address owner;
    string sectet;

    modifier onlyOwner(){
        require(msg.sender == owner, "must be owner");
    }

    constructor (string memeory _secret) public {
        secret = _secret;
        owner = msg.sender;
    }

    function getSecrect() public view onlyOwner returns(string memory){ // only owner can see secret
        return secret;
    }
}