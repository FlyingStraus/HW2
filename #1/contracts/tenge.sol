// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Tenge is ERC20 {

    constructor() ERC20("Tenge", "KZT") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
    
    function transfer_tokens(address to,uint amount) public returns(bool){
        require(!isBlacklist[msg.sender], "You are on BlackList");
        return transfer(to,amount);
    }


    mapping(address => bool) isBlacklist;

    function blacklist(address bad_guy) external{
        isBlacklist[bad_guy] = true;
    }
    function un_blacklist(address bad_guy) external{
        isBlacklist[bad_guy] = false;
    }

    function is_blacklist(address bad_guy) external view  returns(bool){
        return isBlacklist[bad_guy];
    }



}