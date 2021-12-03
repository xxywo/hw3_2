

let flights =[]; 
const setFlights = (data) =>{
  flights = data; 
}









//function to display flight information as dynmamic table 
const displayFlights = () => {
  /*flights.sort((a, b) => {
    return a.key - b.key;
  });*/
  const flightTable = document.querySelector('#flights-table');

  // display all demos by modifying the HTML in "demo-table"
  let tableHTML = "";
  flights.map(flights =>{
    tableHTML +=
    `<tr flight_id= ${flights.flight_id}>
    <th>${flights.flight_id}</th>
    <th>${flights.d_city}</th>
    <th>${flights.a_city}</th>
    <th>${flights.scheduled_departure}</th>
    <th>${flights.scheduled_arrival}</th>
    <th> <select name = "typeclass" id="travelClasses">
    <option value="Economy"selected>Economy</option>
    <option value ="Business">Business</option>
  </select> </th>
    <th><button class="btn btn-danger" type="button" onclick="jump_page(${flights.flight_id})" > BUY</button></th>

    </tr>`;
    
  })
  flightTable.innerHTML = tableHTML;

}





function jump_page(id){
  //id is the flight_id
  
  
  //<a href="payment.html">
  var e1 = document.getElementById("travelClasses");
  //var result = e.options[e.selectedIndex].value;
  var result1 = e1.options[e1.selectedIndex].value;

  run = insertTicket(id, result1);
  if(run == true){
    location.href = "payment.html"

  }
  else{
    alert("ticket sell out, please replan your trip!")
  }
 
  //selectFlights(result, result1); 
  
   //pass flight id and selected class 

  //if there are avaliable ticket -----> next page payment infor
  //if not ticket avaliable -------> alert not enought ticket choose other flight 



}




//get class value bussiness or ecconomy
async function GetSelectdBookValue(){
  //var e = document.getElementById("numTicket");
  var e1 = document.getElementById("travelClasses");
  //var result = e.options[e.selectedIndex].value;
  var result1 = e1.options[e1.selectedIndex].value;
  
  //selectFlights(result, result1); 
  console.log("output input"); 
  console.log(result1); 
  //console.log(chosen_flight); 
  //insertTicket('A000000000001', '3B54BB', '111')
  //ticket_no book_ref  passenger_id 
  // flight_id          random generate 

}

//onclick=" insertTicket('A000000000001', '3B54BB', '111')"


//pass search parameter to backend     
async function pass_data(input1, input2, input3, input4) {
  
  
  const key1 = input1; 
  const key2 = input2; 

  const key3 = input3; 
  const key4 = input4; 
  
  
  try {
    // insert new demo to "http://localhost:5000/demos", with "POST" method
    const body = { key1: key1, key2: key2 , key3 : key3, key4 : key4};

    // connect to heroku, remove localhost:port
    const response = await fetch("http://localhost:5432/flight", {
    // const response = await fetch("/demos", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(body)
    });
   
   

  } catch (err) {
    console.log(err.message);
  }
}






async function selectFlights() {

  // use try... catch... to catch error
    // insert new demo to "http://localhost:5000/demos", with "POST" method
   // const body = { key1: key1, key2: key2, key3: key3, key4: key4 };
try{
    // connect to heroku, remove localhost:port
    //const response = await fetch(url)
    const response = await fetch(`http://localhost:5432/flight`)
    // const deletedDemo = await fetch(`/demos/${id}`, {
     

    // GET all demos from "http://localhost:5000/demos"
    //const response = await fetch("http://localhost:5000/flight")
    // connect to heroku, remove localhost:port
    // const response = await fetch("/demos")
    const jsonData = await response.json();
    console.log(jsonData);

    setFlights(jsonData);
    displayFlights();
    // setTimeout(() => {
    //   console.log(demos);
    // }, 100);
    console.log(flights); 

  } catch (err) {
    
    console.log(err.message);
  }
}


async function selectIndirectFlights() {
try{
  console.log("here"); 
  
    const response = await fetch(`http://localhost:5432/ind`)
   
    const jsonData = await response.json();
    console.log(jsonData);

    //setFlights(jsonData);
    //displayFlights();
   
    console.log(flights); 

  } catch (err) {
    console.log(err.message);
  }
}








let payment =[]; 
const setPayment = (data) =>{
  payment = data; 
}

//function to display flight information as dynmamic table 
const displayPayment = () => {
  /*flights.sort((a, b) => {
    return a.key - b.key;
  });*/

  console.log("display payment", payment.ticket_no)




  const flightTable = document.querySelector('#payment-table');

  // display all demos by modifying the HTML in "demo-table"
  let tableHTML = "";
  payment.map(payment =>{
    tableHTML +=
    `<tr flight_id= >
    <th>${payment.ticket_no}</th>
    <th>${payment.fare_conditions}</th>
    <th>${payment.amount}</th>

    </tr>`;
    
  })
  flightTable.innerHTML = tableHTML;

}


async function getTicketNumber() {
 
  
try{
  
    const response = await fetch(`http://localhost:5432/payment`)
    // const deletedDemo = await fetch(`/demos/${id}`, {
     
    const jsonData = await response.json();
    //console.log(jsonData);

    setPayment(jsonData);
    displayPayment();
    // setTimeout(() => {
    //   console.log(demos);
    // }, 100);
    
  

  } catch (err) {
    console.log(err.message);
  }
}




//transaction insert 
//vars1:  flight id     vars2 : class
async function insertTicket(vars1, vars2) {
 
  
  try {

    const body = {description: vars2 };
    // insert new demo to "http://localhost:5000/demos", with "POST" method
    //const body = {vars1, vars2 };

    
    
    // connect to heroku, remove localhost:port
    const response = await fetch(`http://localhost:5432/flights/${vars1}`, {
    // const response = await fetch("/demos", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(body)
    });

    return true; 
   
   // const newDemo = await response.json();
   // demos.push(newDemo);
    //displayDemos();
    //inputKey.value='';
    //inputDesc.value='';

  } catch (err) {
    console.log(err.message);
    return false; 
  }
}




// update a demo description


async function cancelTicket(id) {
  //cancel ticket by ticket_no 

  try {
    // update a demo from "http://localhost:5000/demos/${id}", with "PUT" method
    // connect to heroku, remove localhost:port
    //const body = {key: id};
    const response = await fetch(`http://localhost:5432/flight/${id}`, {
    // const response = await fetch(`/demos/${id}`, {
      method: "PUT",
      headers: {"Content-Type": "application/json"},
      //body: JSON.stringify(body)
    })

  } catch (err) {
    console.log(err.message);
  }
}



let boardingPass =[]; 
const setboaringPass = (data) =>{
  boardingPass = data; 
}





//function to display flight information as dynmamic table 
const displayboardingPass = () => {
  /*flights.sort((a, b) => {
    return a.key - b.key;
  });*/

  

  const flightTable = document.querySelector('#boadingPass-table');

  // display all demos by modifying the HTML in "demo-table"
  let tableHTML = "";
  boardingPass.map(boardingPass =>{
    tableHTML +=
    `<tr flight_id= >
    <th>${boardingPass.ticket_no}</th>
    <th>${boardingPass.flight_id}</th>
    <th>${boardingPass.boading_no}</th>
    <th>${boardingPass.seat_no}</th>
    <th>${boardingPass.boarding_time}</th>
    <th>${boardingPass.gate}</th>
    <th>${boardingPass.baggage_claim_no}</th>
    

    </tr>`;
    
  })
  flightTable.innerHTML = tableHTML;

}

async function getBP(ticketNumber) {

 
try{
    // connect to heroku, remove localhost:port
    //const response = await fetch(url)
    const response = await fetch(`http://localhost:5432/bp/${ticketNumber}`)
    // const deletedDemo = await fetch(`/demos/${id}`, {
     

    // GET all demos from "http://localhost:5000/demos"
    //const response = await fetch("http://localhost:5000/flight")
    // connect to heroku, remove localhost:port
    // const response = await fetch("/demos")
    const jsonData = await response.json();
    console.log(jsonData);

    setboaringPass(jsonData);
    displayboardingPass();
    // setTimeout(() => {
    //   console.log(demos);
    // }, 100);
    console.log(boardingPass); 

  } catch (err) {
    console.log(err.message);
  }
}




function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}


function yesnoCheck() {
  if (document.getElementById('yesCheck').checked) {
      document.getElementById('ifYes').style.display = 'block';
  }
  else document.getElementById('ifYes').style.display = 'none';

}

const form = document.forms.search_flight;
function handleSubmit(event) {
  event.preventDefault();

  const formData = new FormData(event.target);
  const asString = new URLSearchParams(formData).toString();
  console.log(asString);
}

form.addEventListener('submit', handleSubmit);
// fake-submit the form to see data in the console! =)
//let id = document.getElementById('departureCity').value



//once click the button will go to selectflight
//document.getElementById('button').addEventListener("click", selectFlights(result));



function search_flight(){
  alert("I got clicked!")
}


var e2 = document.getElementById("d_date");
var e3 = document.getElementById("a_date");

    //selectFlights(result, result1); 
console.log("output time")
console.log(e2, e3); 





