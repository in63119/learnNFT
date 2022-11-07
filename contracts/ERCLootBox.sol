// SPDX-License-Identifier: MIT

pragma solidity 0.8.10;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title ERCLootBox
 *
 * ERCLootBox - a tradeable loot box of ERC.
 */
contract ERCLootBox is ERC20 {
    address factoryAddress;

    constructor(address _factoryAddress)
	ERC20("ERCLootBox", "ELB")
    {
        factoryAddress = _factoryAddress;
        _mint(msg.sender, 100000000e18);
    }
}
