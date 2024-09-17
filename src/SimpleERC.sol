//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract MyToken {
    mapping(address=>uint256) private s_balance;

    function name() public pure returns (string memory) {
        return "MyToken";
    }

    function symbol() public pure returns (string memory) {
        return "MTK";
    }

    function decimals() public pure returns (uint8) {
        return 18;
    }

    function totalSupply() public pure returns (uint256) {
        return 10000;
    }

    function balanceOf(address _account) public view returns (uint256) {
        return s_balance[_account];
    }

    function transfer(address _to, uint256 _value) public returns(bool success){
        success = false;
        uint256 oldamount = balanceOf(msg.sender) + balanceOf(_to);
        s_balance[msg.sender] -= _value;
        s_balance[_to] += _value;
        require(oldamount == balanceOf(msg.sender) + balanceOf(_to), "Transaction failed");
        success = true;
        return success;
    }

}

