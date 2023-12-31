1-> DYNAMIC SIZE ARRAY
// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;
contract local{
    uint[] public arr;
    function push(uint value) public {
        arr.push(value);
    }
    function length() public view returns(uint){
        return arr.length;
    }
    function pop() public {
        arr.pop(); //from the last of the array
    }
}

2-> BYTES ARRAY
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
contract Array{
    bytes3 public b3; //3 bytes array
    bytes2 public b2; //2 bytes array
    function setter() public {
        b3='abc';
        b2='ab';
    }
}

3-> BYTES ARRAY
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
contract Array{
    bytes3 public b3; //3 bytes array
    bytes2 public b2; //2 bytes array
    function setter() public {
        b3='abc';
        b2='ab';
    }
}

// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
contract Array{
    bytes public b3="abc"; //3 bytes array
    bytes2 public b2; //2 bytes array
    function pushElement() public {
        b3.push('d');
    }
    function getElement(uint i) public view returns(bytes1){
        return b3[i];
    }
    function getlength() public view returns(uint){
        return b3.length;
    } 
}

4-> while loop
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
contract Array{
    uint[3] public arr; //by default all elements are zero
    uint public count;
    function loop() public {
        while(count<arr.length){
        arr[count]=count;
        count++;
    }
    }
    
}

5-> IF ELSE

// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
contract Array{
    function check(int a) public pure returns(string memory){
        string memory value;
        if(a>0){
            value="greater than zero";
        }
        else if(a==0){
            value="equal to zero";
        }
        else {
            value="less than zero";
        }
        return value;
    }
    
}

6-> BOOL

// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
contract Array{
    bool public value=true; //by default false value
    function check(uint a) public returns(bool){
        if(a>100){
            value=true;
            return value;
        }
        else{
            value=false;
            return value;
        }
    }
    
}

7-> STRUCT

// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
    struct Student{
        uint roll;
        string name;
    }
contract Demo{
    Student public s1;
    constructor(uint _roll,string memory _name){ //constructor is called 
        s1.roll=_roll;
        s1.name=_name;
    }
    function change(uint _roll,string memory _name) public { //for changing the value
        Student memory new_student=Student({
            roll:_roll,
            name:_name
        });
        s1=new_student; //new_student is copied to s1
    }
}

8-> ENUM

// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
contract ENUM{
    enum user{allowed,not_allowed,wait}
    user public u1=user.allowed;
    uint public lottery=1000;
    function owner() public {
        if(u1==user.allowed){
            lottery=0;
        }
    }
    function changeOwner() public {
        u1=user.not_allowed;
    }
}

9->MAPPING

// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
contract MAPPING{
    mapping (uint=>string) public roll_no;
    function setter(uint keys,string memory value) public {
        roll_no[keys]=value;
    }
}


// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
    
contract demo{
    struct Student{
        string name;
        uint class;
    }
    mapping (uint=>Student) public data;
    function setter(uint _roll,string memory _name, uint _class) public {
        data[_roll]=Student(_name,_class);
    }
    
}


10-> STORAGE VS MEMORY

// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
contract MAPPING{
    string[] public student=['Ravi', 'rita', 'aman'];
    function mem() public view {
        string[] memory s1=student; 
        s1[0]='akash'; //no change in student array
        //copy array is formed 
        //pass by value
    }
    function sto() public {
        string[] storage s1=student;
        s1[0]='Akash'; //change in student
        //s1 is allocated to the same string array
        //pass by reference
    }
}





