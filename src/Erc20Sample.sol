// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

contract Erc20Sample {
    string public constant name = "tomatoken";
    string public constant symbol = "tomatoes";
    uint8 public constant decimals = 18;

    uint256 public constant totalSupply = 100000000 ether;

    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;

    event Transfer(address indexed from, address indexed to, uint256 amount);

    constructor() {
        balanceOf[msg.sender] = totalSupply;
        emit Transfer(address(0), msg.sender, totalSupply);
    }

    function transfer(address to, uint256 amount) external returns (bool) {
        require(balanceOf[msg.sender] >= amount, "Insufficient balance");
        balanceOf[to] += amount;
        balanceOf[msg.sender] -= amount;
        emit Transfer(msg.sender, to, amount);
        return true;
    }

    // approve
    // approve event
    // trasnferFrom
}
