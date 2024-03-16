const Ballot = artifacts.require("Ballot");

module.exports = function(deployer) {
  // Deploy the Ballot contract with initial candidate names and parties
  deployer.deploy(Ballot, ["Candidate1", "Candidate2"], ["Party1", "Party2"]);
};
