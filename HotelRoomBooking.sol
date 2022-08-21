// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


// ther Payments
// Modifier
// Visibility
// Events
// Enums

contract HotelRoom {
    // vacant
    // occupied

    enum Statuses { 
        Vacant,
        Occupied
    }

    Statuses public currentStatus;

    event Occupy(address _occupant, uint _value);

    address payable public owner;

constructor() {
    owner = payable(msg.sender);
    currentStatus = Statuses.Vacant;
}

modifier onlyWhileVacant {
    require(currentStatus == Statuses.Vacant, "curently Occupied");
    _;
}

modifier costs(uint _amount){
     require(msg.value >= _amount, "Not Enough Ethher Provided");
    _;
}

    function book() public payable onlyWhileVacant costs(2 ether){
        require(currentStatus == Statuses.Vacant, "curently Occupied");
        currentStatus = Statuses.Occupied;

       // owner.transfer(msg.value);
        (bool sent, bytes memory data) = owner.call{value : msg.value}("");
       require(true);

        emit Occupy(msg.sender, msg.value);
    }
}