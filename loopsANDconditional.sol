// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract loops {
    uint[5] public arr = [1, 2, 3, 4, 5];
    uint public index;

    // loops are to be bound inside a function
    // while loop
    function whileLoop() public {
        while(index < arr.length){
            arr[index]=index;  // set value to index
            index++;  // increment index count
        }
    }

    // for loop
    function forLoop() public {
        for(uint i=index; i<arr.length; i++){
            arr[index]=index;  // set value to index
            index++;  // increment index count
        }
    }

    function doWhileLoop() public {
        do {
            arr[index]=index;  // set value to index
            index++;  // increment index count
        } while(index < arr.length);
    }


    // if...else..if...else
    function conditional(int a) public pure returns (string memory) {
        string memory val;
        if (a > 0) {
            val = "Greater than 0";
        } else if (a == 0) {
            val = "Equal to 0";
        } else {
            val = "Less than 0";
        }
        return val;
    }
}