// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

// creating contract
contract Identity {

    // declaring variables
    string name;
    uint age;

    // setting values in variable by creating a constructor
    constructor() {
        name = "Solidity";  // value for var name
        age = 8;  // value for var age
    }

    // getter function: to get name
    function getName() view public returns(string memory) {
        return name;
    }

    // getter function: to get age 
    function getAge() view public returns(uint) {
        return age;
    }

    // setter function: to increase age by 1
    function setAge() public {
        age = age + 1;
    }

    // function argument as input
    // call inputAge >> getAge >> setAge >> getAge
    function inputAge(uint inpAge) public {
        age = inpAge;
    }
}