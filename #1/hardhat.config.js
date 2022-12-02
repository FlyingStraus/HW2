require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.9",
  networks: {
    testnet: {
      url: "https://bsc-testnet.public.blastapi.io",
      chainId: 97,
      //gasPrice: 20000000000,
      accounts: {
        mnemonic:
          "MEMO PHASE",
      },
    },
  },
};
