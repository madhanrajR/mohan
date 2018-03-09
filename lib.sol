contract lib
{
    struct li
    {
    string bookname;
    uint256 bookid;
    uint256 total;
    uint256 ref;
    uint256 time;
    }
    mapping(string =>li)li1;
    mapping(uint256 =>li)li3;
    mapping(string =>mapping(string =>li))li2;
    mapping(uint256 =>mapping(uint256 =>li))li4;
    uint256 c;
    uint256 []ar;
function bookreg(string _bookname,uint256 _bookid,uint256 _total)
{
 li1[_bookname].bookname=_bookname;
 li1[_bookname].bookid=_bookid;
 li1[_bookname].total=_total;
 li3[_bookid].bookname=_bookname;
 c+=1;
}
function bookretun(string _bookname,uint256 _bookid,string stdname)
{
    if(_bookid==li1[_bookname].bookid&&li2[stdname][_bookname].ref==li1[_bookname].bookid)
 {
    li1[_bookname].total+=1; 
    li2[stdname][_bookname].ref=0;
 }
}
function bookavailability(string bookname)public view returns(string,uint256)
{
  if(li1[bookname].total>=1)
    {
    return("available",li1[bookname].total);
    }
    else
    {
       return("not available",li1[bookname].total);
    }   
}
function booksearch(string bookname,string stdname)returns(string,uint256)  
{
    require(li1[bookname].total>=1&&li2[stdname][bookname].ref!=li1[bookname].bookid);
         li1[bookname].total-=1;
        li2[stdname][bookname].ref=li1[bookname].bookid;
        li2[stdname][bookname].time=now;
         return("succes",li2[stdname][bookname].time);
    }
    function b(string stdname)public view returns(uint256[])
    {
        for(uint256 i=123;i<123+c;i++)
        {
            if(li2[stdname][li3[i].bookname].ref==li1[li3[i].bookname].bookid&&(now-li2[stdname][li3[i].bookname].time)>20)
            {
              ar.push( li1[li3[i].bookname].bookid);  
              
            }
        }
        return (ar);
    }
}
