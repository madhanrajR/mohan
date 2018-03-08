pragma solidity ^0.4.0;
contract sdf
{
    uint256 []a;
    uint256 temp;
    uint256 a1;
    uint256 b1;
    uint256 public c;
    uint256 public d;
   
    struct voters
    {
        string candidate;
        uint256 vote;
        uint256 id;
    }
    mapping(uint256=>voters)voter;
    mapping(string=>voters)voter1;
    
    function sdf(string can1,string can2,string can3)
    {
            voter[1].candidate=can1;
            voter1[can1].id=1;
            voter[2].candidate=can2;
             voter1[can2].id=2;
            voter[3].candidate=can3;
             voter1[can3].id=3;
      
    }
   function voting(string whoto,uint256 _id)
    {
       
        
            require(voter1[whoto].id==_id);
             voter1[whoto].vote+=1;
     
       

    }
    function order()
    {
     for(uint256 k=1;k<4;k++)
     {
         a.push(voter1[voter[k].candidate].vote);
     }
        for(uint256 i=0;i<a.length-1;i++)
        {
            for(uint256 j=i+1;j<a.length;j++)
            {
                if(a[i]<a[j])
                {
                    temp=a[i];
                    a[i]=a[j];
                    a[j]=temp;
                }
            }
       }
    }
    function result() constant returns(string winneris,uint256 vote,string runneris,uint256 vote1)
    {
        
       for(uint256 i1=1;i1<a.length;i1++)
       {
           if(a[0]==voter1[voter[i1].candidate].vote)
           {
               a1=i1;
           }
           if(a[1]==voter1[voter[i1].candidate].vote)
           {
               b1=i1;
           }
       }
       return(voter[a1].candidate,a[0],voter[b1].candidate,a[1]);
       
    }
}
