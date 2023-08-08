//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; //tells the version

contract SimpleStorage {
    uint256 myFavoriteNumber;
    //if no value provided default value is zero

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    //dynamic array have []
    //static array have [5]
    Person[] public listOfPeople; //[]

    //shivam => 5 , in this mapping a string is pointing towards an unsigned integer;
    mapping(string => uint256) public nameToFavoriteNumber;

    // Person public pat = Person(7, "Pat");

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    } //store function contains virtual so it is overridable.

    //view, pure
    function retrive() public view returns (uint256) {
        return myFavoriteNumber;
    }

    //memory - can be modified;
    //calldata - can't be modified;
    //memory and calldata both are temproary;
    //storage is permanent;
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
