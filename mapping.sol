// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract mappings {

    // mapping(key_datatype, value_datatype)
    mapping(uint=>string) public id;

    function setMapVal(uint keys, string memory name) public{
        id[keys] = name;
    }

    // mapping multiple values
    struct Employee {
        string _name;
        uint age;
    }
    mapping(uint => Employee) public data;

    function setStructVal(uint eID, uint age, string memory _name) public{
        // set values of struct Employee to key eID
        data[eID] = Employee(_name, age);
    }


}