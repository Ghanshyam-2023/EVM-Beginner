# MyToken

This is a simple ERC-20-like token contract implemented in Solidity. The contract allows for the creation and destruction of tokens, as well as storing information about the token.

## Requirements

1. **Public Variables**:
   - `tokenName`: A string representing the name of the token (e.g., "MyToken").
   - `tokenAbbrv`: A string representing the abbreviation of the token (e.g., "MTK").
   - `totalSupply`: An unsigned integer representing the total supply of the token in circulation.

2. **Mapping**:
   - `balances`: A mapping that associates addresses with their corresponding token balances. The syntax is `mapping(address => uint)`.

3. **Mint Function**:
   - **Purpose**: Increases the total supply and the balance of a specified address.
   - **Parameters**:
     - `_to`: The address to which the tokens will be minted.
     - `_value`: The amount of tokens to be minted.
   - **Actions**:
     - Increases the `totalSupply` by `_value`.
     - Increases the balance of the `_to` address by `_value`.

4. **Burn Function**:
   - **Purpose**: Decreases the total supply and the balance of a specified address.
   - **Parameters**:
     - `_from`: The address from which the tokens will be burned.
     - `_value`: The amount of tokens to be burned.
   - **Actions**:
     - Checks if the balance of the `_from` address is greater than or equal to `_value`.
     - If true, decreases the `totalSupply` by `_value`.
     - Decreases the balance of the `_from` address by `_value`.

## Usage

1. **Deploy** the `MyToken` contract to a supported Ethereum network.

2. Once deployed, you can interact with the contract by calling the following functions:

   - `mint`: Creates new tokens and assigns them to a specified address.
     - **Parameters**:
       - `_to`: The address to which the tokens will be minted.
       - `_value`: The amount of tokens to be minted.

   - `burn`: Destroys existing tokens by reducing the total supply and the balance of a specified address.
     - **Parameters**:
       - `_from`: The address from which the tokens will be burned.
       - `_value`: The amount of tokens to be burned.

## Authors
Ghanshyam Kumar

## License

This contract is licensed under the MIT License. SPDX-License-Identifier: MIT.
