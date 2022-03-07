// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

struct Student {
    uint roll;
    string name;
}

contract structure {
    Student public s1;

    // constructor to pass values to structure
    constructor(uint rollNo, string memory _name) {
        s1.roll = rollNo;
        s1.name = _name;
    }

    // function to change rollNo and name
    function changeValue(uint rollNo, string memory _name) public {
        Student memory new_student = Student({  // new variable to change data
            roll: rollNo,
            name: _name
        });
        s1 = new_student;  // set value of new_student to s1
    }
}

