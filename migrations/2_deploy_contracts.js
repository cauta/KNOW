var KNOW = artifacts.require("KNOW");
var Multisig = artifacts.require("MultiSigWallet");

module.exports = async(deployer, networks, accounts) => {
    let list_owner = [accounts[0], accounts[1], accounts[2]];
    deployer.deploy(Multisig, list_owner, 2);
    deployer.deploy(KNOW);
};;