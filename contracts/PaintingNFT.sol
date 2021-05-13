pragma solidity ^0.7.4;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PaintingNFT is ERC721, Ownable {

    uint256 tokenId;
    constructor(string memory _name, string memory _symbol ) 
    ERC721(_name, _symbol)
    public {
        tokenId = 0;
    }

    function createNFT(string memory _tokenURI) public onlyOwner {
        _safeMint(msg.sender, tokenId);
        _setTokenURI(tokenId, _tokenURI);
        tokenId = tokenId + 1;
    }
}