// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract StateVar {
    // state variable
    // can be initialised like down or
    // by creating a constructor or
    // through setter function
    uint public num = 10;
    // num = 15;  // state var cannot be initialised like this

    constructor() {
        // variable can be initialised through constructor
        num = 20;

    }

    function setNum() public {
        // variable can be initialised through setter function
        num = 25;
    }
}

contract LocalVar {
    function store() pure public returns(uint) {
        uint number = 50;
        // memory keyword in String saves it inside memory and not at Contract level
        string memory str = "This is String";
        return number;
    }
}

