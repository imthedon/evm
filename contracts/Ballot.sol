// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;
pragma experimental ABIEncoderV2;



contract Ballot {
    // Struct to represent a candidate
    struct Candidate {
        string name;
        string party;
        uint voteCount;
    }

    // Array to store candidates
    Candidate[] public candidates;

    // Constructor to initialize the ballot with candidates
    constructor(string[] memory candidateNames, string[] memory candidateParties) {
        require(candidateNames.length == candidateParties.length, "Invalid input");

        for (uint i = 0; i < candidateNames.length; i++) {
            candidates.push(Candidate(candidateNames[i], candidateParties[i], 0));
        }
    }

    // Function to vote for a candidate
    function vote(uint index) public {
        require(index < candidates.length, "Invalid candidate index");
        candidates[index].voteCount++;
    }

    // Function to get the total number of candidates
    function getCandidateCount() public view returns (uint) {
        return candidates.length;
    }
}
