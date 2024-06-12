
```
# MyToken Contract

MyToken is a basic ERC20 token contract implemented in Solidity.

## Description

This contract allows for the creation of a simple ERC20 token with functionalities for minting and burning tokens. It includes public variables to store details about the token (name, symbol, total supply), a mapping of addresses to balances, and functions for minting and burning tokens.

## Requirements

1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
2. Your contract will have a mapping of addresses to balances (address => uint)
3. You will have a mint function that takes two parameters: an address and a value. 
   The function then increases the total supply by that number and increases the balance 
   of the “sender” address by that amount
4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
   It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
   and from the balance of the “sender”.
5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
   to the amount that is supposed to be burned.

## Usage

1. Deploy the contract to an Ethereum-compatible blockchain.
2. Interact with the deployed contract using a tool like Remix IDE, Truffle, or web3.js.
3. Use the mint function to create new tokens and the burn function to destroy tokens.
4. Ensure that the sender has sufficient balance before calling the burn function to prevent errors.

## Example

```solidity
// Deploy the contract
MyToken myToken = new MyToken();

// Mint new tokens
myToken.mint(address_to, amount);

// Burn tokens
myToken.burn(amount);
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
```

