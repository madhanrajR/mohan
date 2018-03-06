<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Test</title>
    <script src="web3.min.js"></script>
    <script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
<style>
input {
  width:125px;
  padding:10px;
}
.btnEnable {
  background-color:#E6F9D2;
  border:1px solid #97DE4C;
  color:#232323;
  cursor:pointer;
}

.btnDisable {
  background-color:#FCBABA;
  border:1px solid #DD3939;
  color:#232323;
  cursor:wait;
}
</style>
   </head>
  <body>
  <form style="background-color:pink">
   <center>
   <style>
p {
  text-align: center;
  font-size: 20px;
  margin-top:0px;
}
   </style>

<div id="wrapper">
  <div id="myTimer"></div>
   <h1>Bank Wallet</h1>
   <p>Candidate details</p>
   <input id="b1" type="text" placeholder="name"/>
   <input id="myBtn" type="button" onclick="dp()" class="btnEnable"  value="Details"><br>
   <p>Voting</p>
   <input id="b3" type="text" placeholder="candidatename"/>
   <input id="b4" type="button" onclick="tr()" class="btnEnable"  value="voting"><br>
   <p>Order</p>
   <input type="button" onclick="ap()" class="btnEnable"  value="Order"><h1 id="b5"></h1><br>
   <p>Result</p>
   <input type="button" onclick="allo()" class="btnEnable"  value="Result"><h1 id="b6"></h1><br>
   </center>
 </form>
<script>
var sec = 1000;
var myTimer = document.getElementById('myTimer');
var myBtn = document.getElementById('myBtn');
window.onload = countDown;
function countDown() {
  if (sec < 10) {
    myTimer.innerHTML = "0" + sec;
  } else {
    myTimer.innerHTML = sec;
  }
  if (sec <= 0) {
    
    document.getElementById("myBtn").disabled = true;
     document.getElementById("b4").disabled = true;
    $("#myBtn").removeClass().addClass("btnDisable");
    $("#b4").removeClass().addClass("btnDisable");
    $("#myTimer").fadeTo(2500, 0);
   
    return;
  }
  sec -= 1;
  window.setTimeout(countDown, 1000);
}

</script>
   </body>
   <script>
        web3.eth.defaultAccount = web3.eth.accounts[0];
        var voting= web3.eth.contract([
	{
		"constant": true,
		"inputs": [],
		"name": "result",
		"outputs": [
			{
				"name": "winneris",
				"type": "string"
			},
			{
				"name": "vote",
				"type": "uint256"
			},
			{
				"name": "runneris",
				"type": "string"
			},
			{
				"name": "vote1",
				"type": "uint256"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [],
		"name": "d",
		"outputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "name",
				"type": "string"
			}
		],
		"name": "candidatedetails",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [],
		"name": "order",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [],
		"name": "c",
		"outputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "whoto",
				"type": "string"
			}
		],
		"name": "voting",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "constructor"
	}
]);
     var sybox = voting.at('0xb76a2c2df121657d4f4c23e486240b67b54b3efe');
     
     if(!web3.isConnected()) {
  
        console.log("Ok");
        
      } else {
        console.log("no");
      }
      web3.version.getNetwork((err, netId) => {
            switch (netId) {
              case "1":
                console.log('This is mainnet')
                break
              case "2":
                console.log('This is the deprecated Morden test network.')
                break
              case "3":
                console.log('This is the ropsten test network.')
                break
              case "4":
                console.log('This is the Rinkeby test network.')
                break
              case "42":
                console.log('This is the Kovan test network.')
                break
              default:
                console.log('This is an unknown network.')
            }
        })
        function dp()
       {
        var a=document.getElementById("b1").value;
        sybox.candidatedetails(a,function(error,result){
                if (!error) {
                    alert(result);
                }
                else{
                  console.error(error);
                }
              });
	alert("done!...");
            }
	function tr(){
        var b=document.getElementById("b3").value;
	sybox.voting(b,function(error,result){
                if (!error) {
                    alert(result);
                }
                else{
                  console.error(error);
                }
              });
            }
	function ap(){
        sybox.order(function(error,result){
                if (!error) {
                    alert(result);
                }
                else{
                  console.error(error);
                }
              });
            }
	function allo(){
        sybox.result(function(error,result){
                if (!error) {
                    alert(result);
                }
                else{
                  console.error(error);
                }
              });
            }
	 if (distance < 0) {
        clearInterval(x);
       alert(Expired);
    }
</script>
</html>
