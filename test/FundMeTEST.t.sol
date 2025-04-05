// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";
import {DeployFundMe} from "../script/DeployFundMe.s.sol";

contract FundMeTEST is Test {
    FundMe fundMe; // Declare fundMe as a state variable

    function setUp() external {
        // Deploy the FundMe contract in the setup phase
        fundMe = new FundMe();
    }

    function testMinimumDollarIsFive() public view {
        // Assert that the minimum USD value is 5e18
        assertEq(fundMe.MINIMUM_USD(), 5e18);
    }

    function testOwnerIsMsgSender() public view {
        assertEq(fundMe.i_owner(), address(this));

    }

    
   
}
