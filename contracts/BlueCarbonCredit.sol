// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BlueCarbonCredit is ERC1155, Ownable {
    mapping(uint256 => string) private _tokenURIs;
    event CreditsMinted(address indexed account, uint256 indexed tokenId, uint256 amount);
    event CreditsRetired(address indexed account, uint256[] tokenIds, uint256[] amounts);

    constructor() ERC1155("") Ownable(msg.sender) {}

    function mintCredits(address account, uint256 tokenId, uint256 amount, string memory tokenURI) public onlyOwner {
        require(amount > 0, "Amount must be greater than zero");
        _mint(account, tokenId, amount, "");
        _tokenURIs[tokenId] = tokenURI;
        emit CreditsMinted(account, tokenId, amount);
    }

    function retireCredits(uint256[] memory ids, uint256[] memory amounts) public {
        _burnBatch(msg.sender, ids, amounts);
        emit CreditsRetired(msg.sender, ids, amounts);
    }

    function uri(uint256 tokenId) public view override returns (string memory) {
        return _tokenURIs[tokenId];
    }
}

