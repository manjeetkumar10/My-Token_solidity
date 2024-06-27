// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    string public name;            // Token Name
    string public symbol;          // Token Abbrv.
    uint256 public totalSupply;    // Total Supply

    mapping(address => uint256) public balances;

    event Mint(address indexed to, uint256 value);
    event Burn(address indexed from, uint256 value);

    constructor() {
        name = "cryptocoin";           // Example Token Name
        symbol = "CC";              // Example Token Abbreviation
        totalSupply = 0;      // Example Initial Supply
        balances[msg.sender] = totalSupply;
    }

    function mint(address _to, uint256 _value) public {
        require(_value > 0, "Invalid mint value");
        
        totalSupply += _value;
        balances[_to] += _value;
        emit Mint(_to, _value);
    }

    function burn(uint256 _value) public {
        require(_value > 0, "Invalid burn value");
        require(balances[msg.sender] >= _value, "Insufficient balance");

        totalSupply -= _value;
        balances[msg.sender] -= _value;
        emit Burn(msg.sender, _value);
    }
}

