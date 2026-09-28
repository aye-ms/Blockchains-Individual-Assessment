// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Storage {
    
    uint256 number;
    string public courseCode;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function store(uint256 num) public {
        number = num;
    }

    function retrieve() public view returns (uint256) {
        return number;
    }

    function updateCourseCode(string memory newCourseCode) public {
        require(msg.sender == owner, "Only the owner can update");
        courseCode = newCourseCode;
    }
}