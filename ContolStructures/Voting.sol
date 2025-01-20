// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.28;

contract Voting{

  struct candidate{
    string name;
    uint votes;
  }

  mapping(address => bool) public hasVoted;
  candidate[] public candidates;

  constructor(string[] memory _names)
  {
    for(uint i=0;i<_names.length;i++)
    {
      candidates.push(candidate({name: _names[i], votes: 0}));
    }

  }

  function vote(uint _candidateIndex) public 
  {
    require(!hasVoted[msg.sender],"You have already Voted.");
    require(_candidateIndex < candidates.length, "Invalid candidate Index.");

    hasVoted[msg.sender] = true;
    candidates[_candidateIndex].votes += 1;
  }

  function getWinner() public view returns(string memory winnerName, uint winnnerVotes)
  {
    uint highestVotes = 0;
    for(uint i=0;i<candidates.length;i++)
    {
      if(candidates[i].votes > highestVotes)
      {
        highestVotes = candidates[i].votes;
        winnerName = candidates[i].name;
        winnnerVotes = candidates[i].votes;
      }
    }
  }

}
