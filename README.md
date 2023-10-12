# Creating ERC-20 Tokens

## Description

We have made an ERC-20 Token on the Fuji Test network of Avalance chain, the token name is "DEGEN" and is abbrievated as "DGN". The features of these tokens are: 
* It can be minted by only the owner of the contract.
* Anybody who holds the tokens can transfer them.
* We can check the total balance of any address.
* The user who has the tokens can redeem for certain Badges.
* Also we can burn the token that we no longer need.

## Getting Started

Clone this github repository, using the below command in your cmd. Make sure you have git installed. 

```
git clone [paste the link to the repo]
```

### Installing

* Install all the dependencies needed.

```
npm install 
```

### Executing program

* Deploy the contract on the fuji Testnet 
```
npx hardhat run scripts/deploy.js --network fuji
```
* Once you have deployed the contract, you can now interact with the contract using online Remix IDE. 
* Also, connect your metamask wallet to transact on the Testnet.

## Help

For any help I referre the video tutorials by Metacrafters and their Discord channel also has very active members who help a lot.

## Authors

Om Tajne

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
