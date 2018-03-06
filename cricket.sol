contract cricket
{

uint256 []a;
uint256 []b;
struct s{
    uint256 id;
    uint256 v;
}
mapping (uint256 => s)mm;
function player()
{
    for(uint256 i=1;i<=11;i++)
    {
        mm[i].v=1;
        mm[i].id=i;
    }
}
function start()
{
    a.push(1);
    a.push(2);
}
function out(uint256 k)returns(uint256)
{
    mm[k].v=0;
    a[k-1]=0;
    for(uint256 j=a.length+1;j<j+1;j++)
    {
        
        return a.push(j);
    }
}
function details(uint256 l)public view returns(string)
{
    if(mm[l].v==0)
        {
            return "player is out";
        }
        else
        {
            return "player is not out";
        }
  
}
    function currentplayers() public view returns(uint256[])
    {
        for(uint256 o=0;o<a.length;o++)
        {
           for(uint256 f=1;f<=11;f++)
           {
               if(a[o]==mm[f].id)
               {
                   b.push(a[o]);
               }
           }
        }
        return b;
    }
}
