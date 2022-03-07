// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract arrays {

    // fixed size array: specify size at compile time
    uint[4] public arr = [1, 2, 3, 4];

    // change value at array index
    function changeValue(uint index, uint value) public {
        arr[index] = value;
    }

    // get length of array
    function getLength() public view returns(uint) {
        return arr.length;  // built-in length function
    }

    // dynamic size array
    uint[] public arrDynamic;  // dynamic array created
    
    // pushing element to array
    function pushItem(uint item) public {
        arrDynamic.push(item);  // pushes element to array
    }

    function lengthDynamicArr() public view returns(uint) {
        return arrDynamic.length;
    }

    function popItem() public {
        arrDynamic.pop();
    }


    /* Byte Array */

    // array of 3 bytes = 24 bits = 6 hex digits
    // hex bytes/chars are stored in array
    bytes3 public bytArr1;  //  deafult value: 0x000000
    
    // set value in byte array through setter function
    function setByteVal() public {
        bytArr1 = 'Val';
    }

    // dynamic array
    bytes public bytArrDyn = "Dynamic Array";

    // push element to dynamic byte array
    function pushItem() public {
        bytArrDyn.push('X');
    }
    
    // get element by index
    // returns 1 element from the byte array
    function getItem(uint i) public view returns(bytes1){
        return bytArrDyn[i];
    }

}