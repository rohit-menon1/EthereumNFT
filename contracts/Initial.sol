// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract InitialNFT is ERC721{
        constructor() ERC721("InitialNFT", "INF") {
            
        }

}