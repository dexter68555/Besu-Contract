// SPDX-License-Identier: MIT

pragma solidity >= 0.5.0 < 0.9.0;

import "./SimpleStorage.sol";

contract StorageFactory is SimpleStorage{

    SimpleStorage[] public simpleStorageArray; 

    function createSimpleStorageContract() public{

        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);

    }

    function sfStore(uint256 _index, uint256 _simpleStoreNumber) public{

        SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_index]));
        simpleStorage.store(_simpleStoreNumber);

    }

    function sfGetNumber(uint256 _index) public view returns(uint256){

        SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_index]));
        return simpleStorage.getNumber();

    }

}