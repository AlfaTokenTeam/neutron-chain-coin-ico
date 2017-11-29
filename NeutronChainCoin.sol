pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract NeutronChainCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function NeutronChainCoin(address _owner)  UpgradeableToken(_owner) {
    name = "NeutronChainCoin";
    symbol = "NCC";
    totalSupply = 800000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}