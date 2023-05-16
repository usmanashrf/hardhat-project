
const hre = require("hardhat");

//console.log(hre)

async function main(){
    const currentTimestampInSeconds = Math.random(Date.now()/1000);
    const ONE_YEARS_IN_SECONDS = 365 * 24 * 60 * 60;
    const unlockTime = currentTimestampInSeconds + ONE_YEARS_IN_SECONDS;

    const lockAmount = hre.ethers.utils.parseEther("1");

    // console.log(currentTimestampInSeconds);
    // console.log(ONE_YEARS_IN_SECONDS);
    // console.log(unlockTime);
    // console.log(lockAmount);
    
  const MyTest = await hre.ethers.getContractFactory("MyContract");
  const myTest = await MyTest.deploy(unlockTime,{value: lockAmount});
 
  await myTest.deployed();

  console.log(`Contract contain 1 ETH & address : ${myTest.address}`);
}

main().catch((error)=>{
    console.log(error);
    process.exitCode = 1;
})