require("@nomicfoundation/hardhat-toolbox");
// require('dotenv').config();

const FORK_FUJI = false;
const FORK_MAINNET = false;
let forkingData = undefined;

if (FORK_MAINNET) {
  forkingData = {
    url: "https://api.avax.network/ext/bc/C/rpcc",
  };
}
if (FORK_FUJI) {
  forkingData = {
    url: "https://api.avax-test.network/ext/bc/C/rpc",
  };
}

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.18",
  networks: {
    hardhat: {
      gasPrice: 225000000000,
      chainId: !forkingData ? 43112 : undefined, //Only specify a chainId if we are not forking
      forking: forkingData,
    },
    fuji: {
      url: "https://api.avax-test.network/ext/bc/C/rpc",
      gasPrice: 225000000000,
      chainId: 43113,
      accounts: ["7654b5b05bc2e2bb0e233dcbb335b02c7aa580bb28d3953222c896c2c7b57480"], //Private Key
    },
    mainnet: {
      url: "https://api.avax.network/ext/bc/C/rpc",
      gasPrice: 225000000000,
      chainId: 43114,
      accounts: ["7654b5b05bc2e2bb0e233dcbb335b02c7aa580bb28d3953222c896c2c7b57480"],   //Private Key
    },
  },
  etherscan: {
    apiKey: "VJGECWV4N1SV37J2ICR5T44D3A3MG4B3FP"   //Snowtrace API KEY
  },
};
