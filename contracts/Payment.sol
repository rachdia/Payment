// SPDX-License-Identifier: MIT
pragma solidity >= 0.4.17 < 0.9.0 ;

contract Payment {

address transferFrom;
address  payable transferTo;
uint paymentAmount;

event TransferFund(address  _transferTo, address _transferFrom, uint amount);

constructor() public {
transferFrom = msg.sender;
}


function transferFund(address payable _transferTo) public payable returns (bool){
transferTo = _transferTo;
transferTo.transfer(msg.value);
emit TransferFund(transferTo, transferFrom, msg.value);
return true;
}


function getBalanceOfCurrentAccount() public payable returns (uint) {
return transferFrom.balance;
}
}


