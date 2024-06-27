# MyToken Solidity Smart Contract

## Overview
MyToken is a simple ERC20-compatible token smart contract written in Solidity. It allows minting new tokens and burning existing tokens.

### Token Details
- **Name:** cryptocoin
- **Symbol:** CC
- **Total Supply:** 1,000,000 CC

## Features
- **Minting:** Allows the contract owner to mint new tokens and allocate them to a specified address.
- **Burning:** Allows any token holder to burn their own tokens, reducing the total supply accordingly.

## Requirements
- Solidity Compiler version 0.8.18 or higher

## Deployment
1. Compile the `MyToken.sol` file using a Solidity compiler.
2. Deploy the compiled contract to a supported Ethereum Virtual Machine (EVM) environment like Ethereum mainnet, testnets (Ropsten, Rinkeby, etc.), or a local blockchain network (Ganache, Hardhat, etc.).

## Usage
### Deployment Example
```bash
# Compile the contract
solc MyToken.sol --bin --abi --optimize -o ./bin/

# Deploy the compiled contract using a deployment script or directly through Remix, Hardhat, or Truffle.
```

### Interacting with the Contract
- **Minting Tokens:**
  - Use the `mint` function to mint new tokens. Only the contract owner can mint tokens.
  
- **Burning Tokens:**
  - Use the `burn` function to burn existing tokens. Ensure you have sufficient balance before burning.

## Events
- **Mint:** Triggered when tokens are minted and allocated to an address.
- **Burn:** Triggered when tokens are burned and removed from circulation.

## License
This smart contract is licensed under the MIT License. See the `LICENSE` file for more details.
