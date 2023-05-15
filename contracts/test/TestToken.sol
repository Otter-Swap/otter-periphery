// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.8.15;

import '@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol';
import '@openzeppelin/contracts/access/Ownable.sol';

contract TestToken is ERC20Permit, Ownable {
    constructor(uint256 amountToMint, string memory name, string memory symbol) ERC20(name, symbol) ERC20Permit(symbol) {
        _mint(msg.sender, amountToMint);
    }

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }
}
