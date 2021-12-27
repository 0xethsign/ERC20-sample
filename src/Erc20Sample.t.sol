// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

import "ds-test/test.sol";

import "./Erc20Sample.sol";

contract Erc20SampleTest is DSTest {
    Erc20Sample token;

    function setUp() public {
        token = new Erc20Sample();
    }

    function test_total_supply() public {
        assertEq(token.totalSupply(), 100000000 ether);
        assertEq(token.balanceOf(address(this)), token.totalSupply());
    }

    function test_transfer() public {
        uint256 amount = 1 ether;
        token.transfer(address(0x1), amount);
        assertEq(token.balanceOf(address(this)), token.totalSupply() - amount);
        assertEq(token.balanceOf(address(0x1)), amount);
    }
}
