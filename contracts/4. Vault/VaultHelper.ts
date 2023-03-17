import { expect } from "chai";
import { ethers, waffle } from "hardhat";
import { PassThrough } from "stream";

const helper = async (victim: any) => {
  /* 
    Add code here that will help you pass the test
    Note: Unlock without using the string "A very strong password"
    Unlock the vault by somehow reading the private password from 
    Vault directly
  */
    const provider = waffle.provider;
    const password = await provider.getStorageAt(victim.address,1)
    await victim.unlock(password);
};

export default helper;
