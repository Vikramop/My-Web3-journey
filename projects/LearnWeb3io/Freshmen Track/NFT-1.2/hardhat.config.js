require("@nomicfoundation/hardhat-toolbox");
require("@nomiclabs/hardhat-ethers");
require("@nomicfoundation/hardhat-chai-matchers");
require("dotenv").config();
// require("dotenv").config({ path: ".env" });

const KEY = process.env.ALCHEMY_API_Url_KEY;
const PRIVATE_KEY = process.env.PRIVATE_KEY;

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.9",

  networks: {
    goerli: {
      url: KEY,
      accounts: [PRIVATE_KEY],
    },
  },
};
