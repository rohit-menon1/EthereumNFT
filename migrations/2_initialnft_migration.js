const InitialNFT = artifacts.require("InitialNFT");

module.exports = function (deployer) {
  deployer.deploy(InitialNFT);
};
