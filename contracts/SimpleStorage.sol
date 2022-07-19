// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Import this file to use console.log
import "hardhat/console.sol";

contract SimpleStorage {
    uint256 public faceValue;

    uint public unlockTime;
    address payable public owner;

    // Constructor
    constructor(uint _unlockTime) payable {
        require(
            block.timestamp < _unlockTime,
            "Unlock time should be in the future"
        );

        unlockTime = _unlockTime;
        owner = payable(msg.sender);
    }
    // STORING A VALUE IN STORE FUNCTION
    function store(uint _faceValue) public {
        faceValue = _faceValue;
    }

    // RETRIEVING A VALUE FROM VIEW FUNCTION
    function retrieve() public view returns (uint256) {
        return faceValue;
    }
}
