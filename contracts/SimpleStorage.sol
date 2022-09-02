// SPDX-License-Identier: MIT

pragma solidity >= 0.5.0 < 0.9.0;

contract SimpleStorage{

    uint256 bestNumber = 5;
    bool bestBool = true;
    string bestString = "test123";
    int256 bestInt = 55;
    address bestAddress = 0x5555555555555555555555555555555555555555;
    bytes32 bestByte = "dog";

    struct People{

        uint256 bestNumber;
        string name;

    }

    // People public person = People({bestNumber: 55, name: "Bruce Wayne"});

    People [] public people;
    mapping (string => uint256) public nameToBestNumber;

    function store(uint256 _bestNumber) public {

        bestNumber = _bestNumber;

    }

    function getNumber() public view returns(uint256){

        return bestNumber;

    }

    function addPerson(string memory _name, uint256 _bestNumber) public {

        people.push(People(_bestNumber, _name));
        nameToBestNumber[_name] = _bestNumber;

    }

}