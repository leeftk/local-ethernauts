import { expect } from "chai";
import { ethers } from "hardhat";

const helper = async (victim: any, attacker: any) => {
  // add code here that will help you pass the test
  for (let index = 0; index < 9; index++) {
    await attacker.hackContract({ gasLimit: 30000000 });
    
  }
  
};

export default helper;
