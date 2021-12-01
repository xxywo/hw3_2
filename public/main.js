// set global variable demos
let demos = []
// function to set demos
const setDemos = (data) => {
  demos = data;
}

let flights =[]; 
const setFlights = (data) =>{
  flights = data; 
}




// function edit demo
const editDemo = (id) => {

  const key = demos.filter(demo => demo.key === id)[0].key;
  const descrip = demos.filter(demo => demo.key === id)[0].description;
  document.querySelector('#edited-key').value = key;
  document.querySelector('#edited-description').value = descrip;
  document.querySelector('#save-edit-demo').addEventListener("click", function() {updateDemo(id)});

}

// function to display demos
const displayDemos = () => {
  demos.sort((a, b) => {
    return a.key - b.key;
  });
  const demoTable = document.querySelector('#demo-table');

  // display all demos by modifying the HTML in "demo-table"
  let tableHTML = "";
  demos.map(demo =>{
    tableHTML +=
    `<tr key=${demo.key}>
    <th>${demo.key}</th>
    <th>${demo.description}</th>
    <th><button class="btn btn-warning" type="button" data-toggle="modal" data-target="#edit-modal" onclick="editDemo(${demo.key})">Edit</button></th>
    <th><button class="btn btn-danger" type="button" onclick="deleteDemo(${demo.key})">Delete</button></th>
    </tr>`;
  })
  demoTable.innerHTML = tableHTML;

}


//function to display flight information
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
 
  //<a href="payment.html">
  var e1 = document.getElementById("travelClasses");
  //var result = e.options[e.selectedIndex].value;
  var result1 = e1.options[e1.selectedIndex].value;

  insertTicket(id, result1);
  
  //selectFlights(result, result1); 
  
  //location.href = "payment.html"
  
   //pass flight id and selected class 

  //if there are avaliable ticket -----> next page payment infor
  //if not ticket avaliable -------> alert not enought ticket choose other flight 



}



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

// select all the demos when the codes first run
selectDemos();




// The following are async function to select, insert, update and delete demos
// select all the demo
async function selectDemos() {
  // use try... catch... to catch error
  try {

    // GET all demos from "http://localhost:5000/demos"
    const response = await fetch("http://localhost:5000/demos")
    // connect to heroku, remove localhost:port
    // const response = await fetch("/demos")
    const jsonData = await response.json();
    // console.log(jsonData);

    setDemos(jsonData);
    displayDemos();
    // setTimeout(() => {
    //   console.log(demos);
    // }, 100);

  } catch (err) {
    console.log(err.message);
  }
}



                     
async function pass_data(input1, input2, input3, input4) {
  
  
  const key1 = input1; 
  const key2 = input2; 

  const key3 = input3; 
  const key4 = input4; 
  
  
  try {
    // insert new demo to "http://localhost:5000/demos", with "POST" method
    const body = { key1: key1, key2: key2 , key3 : key3, key4 : key4};

    // connect to heroku, remove localhost:port
    const response = await fetch("http://localhost:5000/flight", {
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
  // use try... catch... to catch 
  
  /*const input1 = document.querySelector('#departureCity');
  const input2 = document.querySelector('#arrivalCity');
  const input3 = document.querySelector('#d_date');
  const input4 = document.querySelector('#a_date');
  const key1 = input1.value;
  const key2 = input2.value;
  const key3 = input3.value;
  const key4 = input4.value;*/
  console.log("in selectflight function ")

  // use try... catch... to catch error
    // insert new demo to "http://localhost:5000/demos", with "POST" method
   // const body = { key1: key1, key2: key2, key3: key3, key4: key4 };
try{
    // connect to heroku, remove localhost:port
    //const response = await fetch(url)
    const response = await fetch(`http://localhost:5000/flight`)
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

// insert a new demo
async function insertDemo() {
  // read the demo description from input
  const inputKey = document.querySelector('#demo-key');
  const inputDesc = document.querySelector('#demo-description');
  const key = inputKey.value;
  const description = inputDesc.value;
  // console.log(key, description);

  // use try... catch... to catch error
  try {
    // insert new demo to "http://localhost:5000/demos", with "POST" method
    const body = { key: key, description: description };

    // connect to heroku, remove localhost:port
    const response = await fetch("http://localhost:5000/demos", {
    // const response = await fetch("/demos", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(body)
    });
    const newDemo = await response.json();
    demos.push(newDemo);
    displayDemos();
    inputKey.value='';
    inputDesc.value='';

  } catch (err) {
    console.log(err.message);
  }
}


//transaction insert 

async function insertTicket(vars1, vars2) {
  // read the demo description from input
  //const inputKey = document.querySelector('#demo-key');
  //const inputDesc = document.querySelector('#demo-description');
  //const key = inputKey.value;
  //const description = inputDesc.value;
  // console.log(key, description);

  // use try... catch... to catch error
  
  try {

    const body = {description: vars2 };
    // insert new demo to "http://localhost:5000/demos", with "POST" method
    //const body = {vars1, vars2 };

    
    
    // connect to heroku, remove localhost:port
    const response = await fetch(`http://localhost:5000/flights/${vars1}`, {
    // const response = await fetch("/demos", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(body)
    });
   
   // const newDemo = await response.json();
   // demos.push(newDemo);
    //displayDemos();
    //inputKey.value='';
    //inputDesc.value='';

  } catch (err) {
    console.log(err.message);
  }
}

























// delete a demo by id
async function deleteDemo(id) {
  try {
    // delete a demo from "http://localhost:5000/demos/${id}", with "DELETE" method
    // connect to heroku, remove localhost:port
    const deletedDemo = await fetch(`http://localhost:5000/demos/${id}`, {
    // const deletedDemo = await fetch(`/demos/${id}`, {
      method: "DELETE"
    })
    const deleteDemo = await deletedDemo.json();
    demos = demos.filter(demo => demo.key != deleteDemo.key);
    displayDemos();

  } catch (err) {
    console.log(err.message);
  }
}

// update a demo description
async function updateDemo(id) {
  
  const key = document.querySelector('#edited-key').value;
  const description = document.querySelector('#edited-description').value;
  // console.log(key)
  // console.log(description);

  try {
    // update a demo from "http://localhost:5000/demos/${id}", with "PUT" method
    // connect to heroku, remove localhost:port
    const body = {key: key, description: description};
    const response = await fetch(`http://localhost:5000/demos/${id}`, {
    // const response = await fetch(`/demos/${id}`, {
      method: "PUT",
      headers: {"Content-Type": "application/json"},
      body: JSON.stringify(body)
    })

    let demo = demos.find(t => t.key === id);
    demo.key = key;
    demo.description = description;
    displayDemos();

  } catch (err) {
    console.log(err.message);
  }
}


async function cancelTicket(id) {
  //cancel ticket by ticket_no 
  
  

  try {
    // update a demo from "http://localhost:5000/demos/${id}", with "PUT" method
    // connect to heroku, remove localhost:port
    //const body = {key: id};
    const response = await fetch(`http://localhost:5000/flight/${id}`, {
    // const response = await fetch(`/demos/${id}`, {
      method: "PUT",
      headers: {"Content-Type": "application/json"},
      //body: JSON.stringify(body)
    })

   

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



