// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;
pragma experimental ABIEncoderV2;
import "./Ballot.sol";
contract ElectionCreation {
    // Array to store deployed ballot contracts
    address[] public deployedBallots;

    // Function to deploy a new ballot contract
    function startElec(string[] memory candidateNames, string[] memory candidateParties) public {
        Ballot newBallot = new Ballot(candidateNames, candidateParties);
        deployedBallots.push(address(newBallot));
    }

    // Function to get the deployed ballot contracts
    function getDeployedBallots() public view returns (address[] memory) {
        return deployedBallots;
    }
}
