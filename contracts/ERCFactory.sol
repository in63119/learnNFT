 // SPDX-License-Identifier: MIT

pragma solidity 0.8.10;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "./ERCLootBox.sol";

contract ERCFactory is ERC20, Ownable {
    address public lootBoxERCAddress;

    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        lootBoxERCAddress = address(
            new ERCLootBox(address(this))
        );
    }
}