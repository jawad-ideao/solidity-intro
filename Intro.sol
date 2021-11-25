// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

struct Student  // Custom data types just like object
{
    uint roll;
    string name;
}

contract Intro {
    string public name;
    uint public age;
    bytes public b2="ab";


    enum userPermissions{user,admin}
    userPermissions public user; // default 0 | user 

    Student public s1;

    constructor(string memory newName)
    {
        name=newName;
        //age=24;
        s1.roll= 1;
        s1.name= "Jawad";
    }

    function getName() view public returns(string memory)
    {
        return name;
    }
    /*
    
    function getAge() view public returns(uint)
    {
        return age;
    }
    */
    function setAge(uint newAge) public
    {
        age=newAge;
    }
    function setName(string memory newName ) public
    {
        name= newName;
    }

    function pureFunction () public pure returns(uint){
        uint num = 10;
        return num;
    }

    function getElement(uint i) view public returns(bytes1) // Get element form Bytes array using index
    {
        return b2[i];
    }

    function pushElement() public // Push element to Bytes array
    {
        b2.push("c");
    }

    function condition(int a) public pure returns (string memory) // If else Intro
    {
        string memory val;
        if(a>0){
            val= "Greater than 0";
        }else if (a<0){
            val= "Less than 0";
        }else {
            val= "Value is 0";
        }
        return val;
    }   

    function editStudent(uint _roll, string memory _name) public // Edit s1 Student
    {
        Student memory newStudent = Student({
            roll : _roll,
            name : _name
        });
        s1 = newStudent;
    }

    function makeUserAdmin() public // Make user admin
    {
        user= userPermissions.admin;
    }

    function makeAdminUser() public // Make admin user
    {
        user= userPermissions.user;
    }
}
