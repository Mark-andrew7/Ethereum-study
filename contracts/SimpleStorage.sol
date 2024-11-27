// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 public favouriteNumber;
    People public person = People({favouriteNumber: 2, name: "Mark"});

    struct People {
        uint256 favouriteNumber;
        string name;
    }

    People[] public people;

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
        favouriteNumber = favouriteNumber + 1;
    }

    function retrieve() public view returns(uint256) {
        return favouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        People memory newPerson = People({favouriteNumber: _favouriteNumber, name: _name});
        people.push(newPerson);

    }
}

// 0xd9145CCE52D386f254917e481eB44e9943F39138