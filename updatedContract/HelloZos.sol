pragma solidity ^0.5.0;

import "zos-lib/contracts/Initializable.sol";
import "openzeppelin-eth/contracts/math/SafeMath.sol";

contract HelloZos is Initializable {

  string public name;
  uint256 public maxNumber;
  uint256 public dec;
  uint256 public inc;
  using SafeMath for uint256;
  
  function initialize(string memory _name) initializer public {
    maxNumber = 2**256-1;
    name = _name;
  }

  function decrement(uint256 x) public returns (uint256) {
    return dec = x.sub(1);
  }

  function increment(uint256 x) public returns (uint256) {
    return inc = x.add(1);
  }
}