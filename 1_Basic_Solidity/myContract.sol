// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;




contract MyContract {
// state variable
uint public myUint  = 1; // cannot be negative
uint256 public myUint256  =1;

int256 public  myInt = -1; //can be negative

string public myString = "Hello World";
bytes32 public myBttess32 = "hello World";

// address public myAddress = 0cabgfghdfhvnb4235465;


///--------------------------------- like object

struct MyStruct {
    uint256 myUbit256;
    string myString;
}

MyStruct public newvalue = MyStruct(1,"hello"); // assign value

////------------------------ Array

uint[] public uintArray = [1,2,3];
string[] public strArr = ["apple", "banna0"];
 string[] public values;
 uint256[][] public array2D = [[1,2,3],[4,5,6]];

 function addValue(string memory _value) public {
     values.push(_value);
 }

 function valueCount() public view returns(uint){
     return values.length;
 }



// local variable
function getvalue () public pure returns (uint) {
    uint value = 1;
    return value;
}

}