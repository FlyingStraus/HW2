
const hre = require("hardhat");

async function main() {
  const Tenge = await hre.ethers.getContractFactory("Tenge");
  const tenge = await Tenge.deploy();
  await tenge.deployed();

  console.log("Tenge token", tenge.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
