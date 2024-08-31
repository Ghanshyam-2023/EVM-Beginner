// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    
    // Public variables to store token details
    string public tokenName = "MyToken";
    string public tokenAbbrv = "MTK";
    uint public totalSupply;

    // Mapping from addresses to balances
    mapping(address => uint) public balances;

    // Mint function to create new tokens
    function mint(address _to, uint _value) public {
        totalSupply += _value;       // Increase total supply
        balances[_to] += _value;     // Increase balance of the sender
    }

    // Burn function to destroy tokens
    function burn(address _from, uint _value) public {
        // Check that the balance is sufficient for the burn
        require(balances[_from] >= _value, "Insufficient balance to burn tokens");
        
        totalSupply -= _value;       // Decrease total supply
        balances[_from] -= _value;   // Decrease balance of the sender
    }
}
