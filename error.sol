// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;


contract Errorcheck{
    bool result;
    function checkinput(uint256 _input) public pure returns(string memory){
        require(_input >=0,"invald uint8");
        return "success";
        
}
function checkoverflow(uint256 _num1, uint256 _num2) public{
    uint256 sum = _num1 + _num2;
    assert(sum <= 255);
    result = true;
}
function Checkrevert(uint256 _num1, uint256 _num2) public pure returns(string memory){
    uint256 sum = _num1 + _num2;
    if(sum < 0 || sum > 255){
        revert("overflow exist");
    }
        else{
            return("no overflow");
        }

 
}
}