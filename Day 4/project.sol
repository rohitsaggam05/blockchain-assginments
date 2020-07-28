pragma solidity ^0.4.21 < 0.6.12;

contract Report_Card{
    
    string public name;
    uint public rollno;
    uint public batch;
    string public status;
    uint  sub1;
    uint  sub2;
    uint  sub3;
    uint  sub4;
    
    constructor(string newname,uint newrollno,uint newbatch,uint marks1,uint marks2,uint marks3,uint marks4)public{
        name = newname;
        rollno = newrollno;
        batch = newbatch;
        sub1 = marks1;
        sub2 = marks2;
        sub3 = marks3;
        sub4 = marks4;
       
        uint result = sub1 + sub2 + sub3 + sub4;
        
        if(result > 160){
            status = "Pass";
        }
        else {
            status = "Fail";
        }
        
    }
    
    function getStudentDetails()public view returns(string,uint,uint,string){
       
        return(name,rollno,batch,status);
        
    } 
    
}