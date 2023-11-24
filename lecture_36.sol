// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;


//HelloWorld.sol 
contract HelloWorld{
    string public greet="Hello World";
}


//Counter.sol
contract Counter{
    //ethereum mostly works on currency and that's why uint is used instead of int positive value
    uint count=0;  //global state value stored in the BC
    //also remove public from the count as anyone can access it and change it so make variable non public

    function get() public view returns (uint){
        return count;
    }
    
    function add() public pure returns(uint){ 
        return (2+3);
    }
    
    function increment_count() public { //public is required to access it from the outside
        count++;
    }

    function decrement_count() public {
        count--;
    }
}