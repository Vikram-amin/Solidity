// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    // key => value (key value pair)
    mapping (uint => string) names;
    
    constructor () public {
        names[1] = "adam";
        names[2] = "joy";
    }


    //2
    mapping (uint => Book) public books;

    struct Book {
        string title;
        string author;
    }

    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);
    }

    // nested mapping

    mapping(address => mapping(uint => Book)) public myBooks; // see my perticular book

    function addMyBook (uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title,_author);
    }


}