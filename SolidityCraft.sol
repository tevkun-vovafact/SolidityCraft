pragma solidity ^0.8.0;

contract SolidityCraft {
    
    // Added a function to return contract version
    function getVersion() public pure returns (string memory) {
        return "v1.1";
    }


    // Estimate fee based on operation code
    function estimateFee(uint opCode) public pure returns (uint) {
        if (opCode == 1) {
            return 21000;
        } else if (opCode == 2) {
            return 50000;
        } else {
            return 100000;
        }
    }

    
    // Estimate gas consumption for a given operation
    function gasEstimate(uint256 opCode) public pure returns (uint256) {
        if (opCode == 1) {
            return 21000;
        } else if (opCode == 2) {
            return 50000;
        } else {
            return 100000;
        }
    }

    mapping(address => bool) public artisans;

    event ArtisanRegistered(address indexed artisan);

    function register() public {
        artisans[msg.sender] = true;
        emit ArtisanRegistered(msg.sender);
    }

    function isArtisan(address user) public view returns (bool) {
        return artisans[user];
    }
}
