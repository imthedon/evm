const ElectionCreation = artifacts.require("ElectionCreation");

module.exports = function(deployer) {
  // Deploy the ElectionCreation contract
  deployer.deploy(ElectionCreation);
};
