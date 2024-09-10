// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {Test} from "forge-std/Test.sol";
import {MyToken} from "src/MyToken.sol";
import {DeployMyToken} from "script/DeployMyToken.s.sol";
import {IERC20Errors} from "@openzeppelin/contracts/interfaces/draft-IERC6093.sol";

contract MyTokenTest is Test {
    MyToken myToken;
    DeployMyToken deployer;
    uint256 public constant INITIAL_SUPPLY = 10000 ether;
    address public constant USER = address(1);
    address public constant SPENDER = address(2);

    function setUp() external {
        deployer = new DeployMyToken();
        myToken = deployer.run();
    }

    function test_setUp() public view {
        assertEq(myToken.balanceOf(msg.sender), INITIAL_SUPPLY);
    }

    // Direct transfer
    function test_transfer() public {
        uint256 balSenderBefore = myToken.balanceOf(msg.sender);
        uint256 balUserBefore = myToken.balanceOf(USER);
        uint256 transferAmount = 10 ether;

        vm.prank(msg.sender);
        myToken.transfer(USER, transferAmount);

        uint256 balSenderAfter = myToken.balanceOf(msg.sender);
        uint256 balUserAfter = myToken.balanceOf(USER);

        assertEq(balSenderAfter, balSenderBefore - transferAmount);
        assertEq(balUserAfter, balUserBefore + transferAmount);
    }

    // Indirect transfer
    function test_transferFrom() public {
        uint256 balSenderBefore = myToken.balanceOf(msg.sender);
        uint256 balUserBefore = myToken.balanceOf(USER);
        uint256 transferAmount = 10 ether;

        // Revert if not approve
        vm.expectRevert(
            abi.encodeWithSelector(IERC20Errors.ERC20InsufficientAllowance.selector, SPENDER, 0, transferAmount)
        );
        vm.prank(SPENDER);
        myToken.transferFrom(msg.sender, USER, transferAmount);

        // Actual Transactions
        vm.prank(msg.sender);
        myToken.approve(SPENDER, transferAmount);

        vm.prank(SPENDER);
        myToken.transferFrom(msg.sender, USER, transferAmount);

        uint256 balSenderAfter = myToken.balanceOf(msg.sender);
        uint256 balUserAfter = myToken.balanceOf(USER);

        assertEq(balSenderAfter, balSenderBefore - transferAmount);
        assertEq(balUserAfter, balUserBefore + transferAmount);
    }
}
