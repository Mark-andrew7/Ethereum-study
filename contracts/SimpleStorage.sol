// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 public favouriteNumber;
    People public person = People({favouriteNumber: 2, name: "Mark"});

    mapping(string => uint256)public nameToFavouriteNumber;

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
        people.push(People(_favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}

// 0xd9145CCE52D386f254917e481eB44e9943F39138