// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    /*
    ** Specify the name and symbol of our cryptocurrency. Eg. name = Ethereum, symbol = ETH.
    ** Theses parameters are passed on to the ERC20 constructor, thereby initializing the ERC20 smart contract.
    */
    constructor(string memory _name, string memory _symbol)
        ERC20(_name, _symbol)
    {
        /*
        ** `ERC20` tokens by default work with 18 decimal places.
        ** So 1 full `MyToken` in this case, is actually represented as 10 ^ 18.
        ** Therefore, to get 10 full `MyToken`, we use 10 * 10 ** 18.
        */
        _mint(msg.sender, 10 * 10**18);
    }
}
