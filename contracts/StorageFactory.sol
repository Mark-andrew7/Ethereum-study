// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";


contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    function CreateSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        simpleStorage.store(_simpleStorageNumber);
    }
}