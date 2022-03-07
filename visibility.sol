// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract visibility {

    // public function
    function f1() public pure returns(uint){
        return 1;
    }

    // private function: within contract
    function f2() private pure returns(uint) {
        return 2;
    }

    // internal function: within contract and derived
    function f3() internal pure returns(uint) {
        // uint y = f4();  // cannot be used within the contract
        return 3;
    }

    // external function: outside, derived and other contracts
    function f4() external pure returns (uint) {
        return 4;
    }

}


// derived contract
// contract `derived` inherits contract `visibility`
contract derived is visibility {
    // only external and internal functions can be inherited
    // uint public z = f2();  // private function cannot be called outside the contract
    uint public z = f3();  // internal function can be called internally within derived contracts
    // uint public f4 = f4();  // external function cannot be called within the contract

}

// outside contract: can only access public and external functions
contract other{
    // create object
    // Syntax: contract_name object_name = new contract_name();
    visibility obj = new visibility();
    uint public v = obj.f1();
    uint public v2 = obj.f4();

}