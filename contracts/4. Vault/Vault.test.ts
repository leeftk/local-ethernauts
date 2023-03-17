import { expect } from "chai";
import { ethers, waffle } from "hardhat";
import helper from "./VaultHelper";

let victim: any;

describe("Attacking Vault", function () {
  beforeEach(async () => {
    const Victim = await ethers.getContractFactory("Vault");
    victim = await Victim.deploy(
      ethers.utils.formatBytes32String("puta")
    );
  });

  // Get this to pass!
  it("Succesfully unlock the vault", async () => {
    await helper(victim);
    const locked = await victim.locked();
    await victim.unlock(ethers.utils.formatBytes32String("puta"))
    expect(locked).to.be.equal(false);
  });
});