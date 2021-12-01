const express = require('express');
const app = express();
const cors = require('cors');
const pool = require('./creds');

//////////////////////////////////////////////
// add for keroku use
app.use(express.static('public'));

// middleware
app.use(cors());
app.use(express.json());      //req.body

//ROUTES

//insert a demo
app.post('/demos', async(req, res)=>{
  try{

    const {key, description} = req.body;
    // console.log(key, description);
    const newDemo = await pool.query(`INSERT INTO demo (key, description) VALUES($1, $2) RETURNING *`,
      [key, description]);
    
    res.json(newDemo.rows[0]);          

  } catch(err){
    console.log(err.message);
  }
});


function makeid(length) {
  var result           = '';
  var characters       = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
  var charactersLength = characters.length;
  for ( var i = 0; i < length; i++ ) {
    result += characters.charAt(Math.floor(Math.random() * 
charactersLength));
 }
 return result;
}

//append file to sql 
function append_file_sql(content){
  console.log("create file"); 
	const fs = require('fs')
	const path = require('path')


	try {

		fs.appendFileSync(__dirname+'/nf.sql', content); 
		//fs.appendFileSync('/Users/alice/Downloads/nf.sql', content); 
		//console.log(__dirname+'/nf.sql'); 
		//fs.appendFileSync('/home/y2021/fall/cs3380/dbs123/hw2/nf.sql', content); 

	}
	catch(err){
		console.error(err); 
	}
}





//transcation insert 
app.post('/flights/:vars1', async(req, res)=>{

  //pass flight id and selected class 
  

  
 

  
  
    //vars: ticket_no   book_ref passenger_id flight_id
    //const {vars1, vars2, vars3} = req.body;       //the row to insert 
    // console.log(key, description);
    var stauts = 'book' //mark as reserved in status  when user cancel, mark as cancel 
    var no = 'no'
    var yes = 'yes'
    const client = await pool.connect(); 
try{
    console.log("get to here")
    
    await client.query('BEGIN')

    //first check if there is avaiable ticket 

    //const check_query = `SELECT * FROM ticket_flights WHERE flight_id = $1`;
    //const check = await client.query(check_query, [req.params.vars1]); 
    const check_query = `SELECT ticket_no FROM ticket_flights WHERE flight_id = $1 AND fare_conditions = $2 AND available_buy = $3`;
    const check = await client.query(check_query, [req.params.vars1, req.body.description, yes]); 
 
    
     
    console.log(check.rows[0].ticket_no); 


    //random generate book_ref and passenger id 
    book_ref = makeid(6); 
    console.log(book_ref); 
    passenger_id = makeid(3); 
    console.log(passenger_id); 

    //insert into ticket table 
    const queryText = 'INSERT INTO ticket (ticket_no, book_ref, passenger_id, status) VALUES($1, $2, $3, $4)'
    const res = await client.query(queryText, [check.rows[0].ticket_no, book_ref, passenger_id, stauts])

    //update in ticket flight to available_buy to "no"
    const queryText2 = 'UPDATE ticket_flights SET available_buy = $1 WHERE ticket_no = $2'
    await client.query(queryText2, [no, check.rows[0].ticket_no]); 


    //insert into passenger_info
    //insert into bookings
    //insert into payment table 

    //console.log(res.rows); 
    console.log("insert success ")
    await client.query('COMMIT')
  } catch (e) {
    await client.query('ROLLBACK')
    throw e
  } finally {
    client.release()
  }

});

















let d; 
let d1; 

let d_d; 
let a_d; 

app.post('/flight', async(req, res)=>{
  try{

    //departure city   arrival city    departure date    arrival date
    const {key1, key2, key3, key4} = req.body;
    // console.log(key, description);
    d = key1; 
    d1 = key2; 

    d_d = key3; 
    a_d = key4; 



    console.log(key1, key2); 
    //console.log("here")
    //res.json(newDemo.rows[0]);          

  } catch(err){
    console.log(err.message);
  }
});

//get all demo
app.get('/demos', async(req, res)=>{
  try{
    const allDemos = await pool.query(`SELECT * FROM demo`);
    res.json(allDemos.rows);
    console.log(allDemos);
  } catch(err){
    console.log(err.message);
  }
});


//get all data from flight 
//get the input as req
app.get('/flight', async(req, res)=>{

  
  console.log(d, d1); 

  console.log(d_d, a_d); 
  

  try{

    const select1 = `SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival `
    const select2 = `FROM flights `
    const select3 = `JOIN airports as departure `
    const select4 = `ON departure.airport_code = flights.departure_airport `
    const select5  = `JOIN airports as arrival `
    const select6  = `ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ${d} and arrival.airport_code = ${d1} and DATE(scheduled_departure) = ${d_d} and DATE(scheduled_arrival) = ${a_d} `



    const allFlights = await pool.query(`SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival
    FROM flights
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport
JOIN airports as arrival
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = $1 and arrival.airport_code = $2 and DATE(scheduled_departure) =$3 and DATE(scheduled_arrival) = $4`, [d,d1, d_d, a_d]);
    

append_file_sql(`/* search for flight */`);
append_file_sql('\n'); 
append_file_sql(select1)
append_file_sql('\n'); 
append_file_sql(select2)
append_file_sql('\n'); 
append_file_sql(select3)
append_file_sql('\n'); 
append_file_sql(select4)
append_file_sql('\n'); 
append_file_sql(select5)
append_file_sql('\n'); 
append_file_sql(select6)

//onst allFlights = await pool.query(`SELECT * FROM flights where DATE(scheduled_departure) = $1 and DATE(scheduled_arrival) = $2`, [d_d, a_d]); 


    res.json(allFlights.rows);
    console.log(allFlights);
  } catch(err){

    console.log(err.message);
  }
});





//cancel 
app.put("/flight/:id", async (req, res) => {
  const { id } = req.params;
  const client = await pool.connect(); 
try{
  var yes = 'yes'; 
  var status = 'cancel'
  await client.query('BEGIN')
  
  

  //update in ticket flight to available_buy to "yes"   avaliable for buy
  const queryText = 'UPDATE ticket_flights SET available_buy = $1 WHERE ticket_no = $2'
  await client.query(queryText, [yes, id]); 


  //update in ticket status to "cancel"

  const queryText2 = 'UPDATE ticket SET status = $1 WHERE ticket_no = $2'
  await client.query(queryText2, [status, id]); 

 
  console.log("cancel success ")
  await client.query('COMMIT')
} catch (e) {
  await client.query('ROLLBACK')
  throw e
} finally {
  client.release()
}
});







//get a demo by id
app.get('/demos/:id', async(req, res)=>{
  try{
    const { id } = req.params;
    const demo = await pool.query(`SELECT * FROM demo 
                                   WHERE key = $1`, 
      [id]);
    res.json(demo.rows);
  } catch(err){
    console.log(err.message);
  }
});

//update a demo by id
app.put("/demos/:id", async (req, res) => {
  try {
    const { id } = req.params;
    const { key, description } = req.body;
    // console.log(key, description);
    const updateDemo = await pool.query(`UPDATE demo SET key = $2, description = $3 
                                         WHERE key = $1`,
      [id, key, description]);

    res.json({key, description})
  } catch (err) {
    console.error(err.message);
  }
});

//delete a demo by id
app.delete("/demos/:id", async (req, res) => {
  try {
    const { id } = req.params;
    // console.log(id);
    const deleteDemo = await pool.query(`DELETE FROM demo 
                                         WHERE key = $1 RETURNING *`, 
      [id]);
    res.json(deleteDemo.rows[0]);

  } catch (err) {
    console.log(err.message);
  }
});

//?????               
app.get('*', function(req, res) {
  res.sendFile(path.join(__dirname + '/public/index.html'));
});

// set up the server listening at port 5000 (the port number can be changed)
const port = process.env.PORT || 5000;
app.listen(port, ()=>{
  console.log(`server has started on port ${port}`);
});



