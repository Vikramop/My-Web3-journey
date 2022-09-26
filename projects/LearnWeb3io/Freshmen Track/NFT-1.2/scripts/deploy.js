const { ethers } = require("hardhat");

async function main() {
  // 1. deploy our smart contract
  const contract = await ethers.getContractFactory("NFT");

  //2.0 Deploy it
  const deployedContract = await contract.deploy();

  //2.1 wait for  deployed contract to complete
  await deployedContract.deployed();

  // 3. print the adderess of the deployed contract.
  console.log("NFT Contract deployed to ", deployedContract.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
