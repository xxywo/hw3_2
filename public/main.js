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
  const demoTable = document.querySelector('#flights-table');

  // display all demos by modifying the HTML in "demo-table"
  let tableHTML = "";
  flights.map(flights =>{
    tableHTML +=
    `<tr departure=>
    <th>${flights.d_city}</th>
    <th>${flights.a_city}</th>
    <th>${flights.scheduled_departure}</th>
    <th>${flights.scheduled_arrival}</th>
    <th><button class="btn btn-danger" type="button" onclick="">BUY</button></th>

    </tr>`;
  })
  demoTable.innerHTML = tableHTML;

}

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


async function selectFlights(id) {
  // use try... catch... to catch 
  
  /*const input1 = document.querySelector('#departureCity');
  const input2 = document.querySelector('#arrivalCity');
  const input3 = document.querySelector('#d_date');
  const input4 = document.querySelector('#a_date');
  const key1 = input1.value;
  const key2 = input2.value;
  const key3 = input3.value;
  const key4 = input4.value;*/
  console.log("in main.j : id is ");
  console.log(id);

  // use try... catch... to catch error
    // insert new demo to "http://localhost:5000/demos", with "POST" method
   // const body = { key1: key1, key2: key2, key3: key3, key4: key4 };
try{
    // connect to heroku, remove localhost:port
    const response = await fetch(`http://localhost:5000/flight/${id}`)
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