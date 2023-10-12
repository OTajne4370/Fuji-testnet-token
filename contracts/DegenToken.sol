// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {

    string[] public items_title = ["1. Platinum Badge", "2. Golden Badge", "3. Silver Badge"];

    constructor() ERC20("Degen", "DGN") {}


    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function transferToken(address to, uint amount) public {
        require(balanceOf(msg.sender) >= amount, "Insufficient Tokens");
        approve(msg.sender, amount);
        transferFrom(msg.sender, to, amount);
    }

    function listingItems(uint index) public returns(string memory){
        return items_title[index];
    }

    function redeem(uint to_redeem) public returns(string memory) {
        require(balanceOf(msg.sender) >= 50, "Insufficient Tokens");
        if(balanceOf(msg.sender)  >= 150 && to_redeem == 1){
            _burn(msg.sender, 150);
            return items_title[2];
        }
        else if(balanceOf(msg.sender)  >= 100 && to_redeem == 2){
            _burn(msg.sender, 100);
            return items_title[1];
        }
        else if(balanceOf(msg.sender)  >= 50 && to_redeem == 3){
            _burn(msg.sender, 50);
            return items_title[0];
        }
    }

    function viewBalance() public view returns(uint) {
        return balanceOf(msg.sender);
    }
    
    function burnToken(uint amount) public {
        require(balanceOf(msg.sender) >= amount, "Insufficient Tokens");
        _burn(msg.sender, amount);
    }
}
