// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Envision is ERC20 {
    string private constant NAME = "Envision";
    string private constant SYMBOL = "VIS";
    uint256 private constant SUPPLY = 100_000_000_000_000_000_000_000_000;

    constructor() ERC20(NAME, SYMBOL) {
        _mint(msg.sender, SUPPLY);
    }

    function mint(address to, uint256 amount) external {
        _mint(to, amount);
    }

    function burn(uint256 value) external {
        _burn(msg.sender, value);
    }
}
