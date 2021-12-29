// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract Chip is ERC1155,Ownable{
        uint256 public constant ChipId = 0;
        constructor() ERC1155("https://jeu5jbtjrwyb.usemoralis.com/{id}.json") {
            _mint(msg.sender , ChipId , 1 , "");
        }

        function mint(address to,uint256 id,uint256 amount) public onlyOwner {
            _mint(to , id , amount , " ");
        }

        function burn(address from,uint256 id, uint256 amount) public onlyOwner {
            require(msg.sender == from);
            _burn( from ,id ,amount);
        }

}