pragma solidity 0.5.16;

import "./ERC721Full.sol";

contract Color is ERC721Full {
  string[] public colors;
  mapping(string => bool) _colorExists;

	constructor() ERC721Full("Color", "COLOR") public {
  }

  // E.G. color = "#ffffff"
  function mint(string memory _color) public {
    require(!_colorExists[_color]); // Exit if color exists 
    uint _id = colors.push(_color); // Color - add it
    _mint(msg.sender, _id); // Call the mint function
    _colorExists[_color] = true; // Color - track it
  }
}
