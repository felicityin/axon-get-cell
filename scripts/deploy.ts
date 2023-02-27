import { ethers } from "hardhat";

async function main() {
    const CellProviderContract = await ethers.getContractFactory("CellProviderContract");
    const test = await CellProviderContract.deploy();

    await test.deployed();

    console.log(
      `Deployed: ${test.address}`
    );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
