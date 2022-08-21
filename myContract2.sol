// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


// inheritabce
// factories
// Interraction



// Interraction
contract Ownable {
    address owner;

    modifier onlyOwner(){
        require(msg.sender == owner, "must be owner");
        _;
    }

        constructor () publiv {
            owner = msg.sender;
        }
}

contract myContract {
    string sectet;

    constructor (string memeory _secret) is Ownable public {
        secret = _secret;
        // owner = msg.sender;
        super;
    }

    function getSecrect() public view onlyOwner returns(string memory){ // only owner can see secret
        return secret;
    }
}