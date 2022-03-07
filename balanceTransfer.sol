// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

// pay or transfer ether to contract and specified address

contract pay {

    // need to convert address explicitly to payable
    address payable user = payable(0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c);

    function payEther() public payable {
        // the function automatically generates a payment env
    }

    // get current balance of contract
    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    // transfer ether from contract to an address
    function sendEther() public{
        // transfer ether to specified address
        user.transfer(1 ether);
    }
}