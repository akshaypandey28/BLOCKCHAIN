// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

//enum.sol
contract enum1{
    enum freshJuice{small,medium,large} //freshJuice is an enum i.e data type
    freshJuice choice; //choice stores first value of enum i.e index 0
    freshJuice constant defaultChoice=freshJuice.medium; //constant

    function setLarge() public { //this function will set the value that is change the state of the BC only on clicking the 
        choice=freshJuice.large; //setLarge function
    }

    function setSmall() public {
        choice=freshJuice.small;
    }
    function getChoice() public view returns(freshJuice){ //this function fetch the data from the BC
        return choice;
    }

    function getDefault() public pure returns(uint){//use pure here not view
        return uint(defaultChoice);
    }
}

//struct.sol
contract structure {
    struct Book{
        string title;
        string author;
        uint bookID;
        uint price;
    }

    //define a struct - name of the struct variable to represent the struct
    Book book;

    function setBook() public {
        book=Book("Blockchain for beginners" ,"Ineuron",4,1000);//title , author , bookID , price
    }

    function getBookID() public view returns(uint){
        return book.bookID;
    }

    function getBookTitle() public view returns(string memory){//By adding the `memory` keyword, you indicate that the returned value will be stored in memory
        return book.title;
    }
    
}