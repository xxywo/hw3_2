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

//random generator 
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
//queries.sql
function append_file_sql(content){
  console.log("create file"); 
	const fs = require('fs')
	const path = require('path')


	try {

		fs.appendFileSync(__dirname+'/queries.sql', content); 
		//fs.appendFileSync('/Users/alice/Downloads/nf.sql', content); 
		//console.log(__dirname+'/nf.sql'); 
		//fs.appendFileSync('/home/y2021/fall/cs3380/dbs123/hw2/nf.sql', content); 

	}
	catch(err){
		console.error(err); 
	}
}
//transactions.sql
function append_transactions(content){
  console.log("create file"); 
	const fs = require('fs')
	const path = require('path')


	try {

		fs.appendFileSync(__dirname+'/transactions.sql', content); 
		//fs.appendFileSync('/Users/alice/Downloads/nf.sql', content); 
		//console.log(__dirname+'/nf.sql'); 
		//fs.appendFileSync('/home/y2021/fall/cs3380/dbs123/hw2/nf.sql', content); 

	}
	catch(err){
		console.error(err); 
	}
}



let ticket_no_; 


//transcation insert 
app.post('/flights/:vars1', async(req, res)=>{

 
    var stauts = 'book' //mark as reserved in status  when user cancel, mark as cancel 
    var no = 'no'
    var yes = 'yes'
    const client = await pool.connect(); 
try{
    console.log("get to here")

    append_transactions(`/* Transaction Insert */`);
    append_transactions('\n')
    append_transactions('BEGIN')
    append_transactions('\n')
    
    await client.query('BEGIN')

    append_transactions('\n')
    //first check if there is avaiable ticket 

    //const check_query = `SELECT * FROM ticket_flights WHERE flight_id = $1`;
    //const check = await client.query(check_query, [req.params.vars1]); 
    const check_query = `SELECT ticket_no FROM ticket_flights WHERE flight_id = $1 AND fare_conditions = $2 AND available_buy = $3`;
    const check = await client.query(check_query, [req.params.vars1, req.body.description, yes]); 
 
    

    const add = `SELECT ticket_no FROM ticket_flights WHERE flight_id = ${req.params.vars1} AND fare_conditions = ${req.body.description} AND available_buy = ${yes}`;
    append_transactions(add)
    append_transactions('\n')

    console.log(check.rows[0]); 
    console.log(check.rows[0].ticket_no); 


    //random generate book_ref and passenger id 
    book_ref = makeid(6); 
    console.log(book_ref); 
    passenger_id = makeid(3); 
    console.log(passenger_id); 

    //insert into ticket table 
    const queryText = `INSERT INTO tickets (ticket_no, book_ref, passenger_id, status) VALUES($1, $2, $3, $4)`
    const res = await client.query(queryText, [check.rows[0].ticket_no, book_ref, passenger_id, stauts])


    const add2 = `INSERT INTO tickets (ticket_no, book_ref, passenger_id, status) VALUES(${check.rows[0].ticket_no}, ${book_ref}, ${passenger_id}, ${stauts})`
    append_transactions(add2);
    append_transactions('\n')


    //update in ticket flight to available_buy to "no"
    const queryText2 = `UPDATE ticket_flights SET available_buy = $1 WHERE ticket_no = $2`
    await client.query(queryText2, [no, check.rows[0].ticket_no]); 


    const add3 =  `UPDATE ticket_flights SET available_buy = ${no} WHERE ticket_no = ${check.rows[0].ticket_no}`
    append_transactions(add3);
    append_transactions('\n')


    ticket_no_ = check.rows[0].ticket_no; //record the ticket number to send back to user 
    

    //insert into passenger_info
    //insert into bookings
    //insert into payment table 


    //insert into boarding pass

    const alphabet = "abcdefghijklmnopqrstuvwxyz"

    const randomCharacter = alphabet[Math.floor(Math.random() * alphabet.length)]

    let boading_no = Math.floor(Math.random() * 100);//random number from 1 - 100
    let seatNo = boading_no+randomCharacter; 
    console.log(seatNo); 


    const getBoardingTime = `SELECT scheduled_departure FROM flights WHERE flight_id = $1 `;
    const BT= await client.query(getBoardingTime, [req.params.vars1]); 

    const add4 = `SELECT scheduled_departure FROM flights WHERE flight_id = ${req.params.vars1} `
    append_transactions(add4)
    append_transactions('\n')

    console.log("here"); 
 
  
    let boarding_time = Date(BT.rows[0].scheduled_departure.getTime()-1); 

    console.log(boarding_time); 
    let gate = makeid(3); 
    let bag =  makeid(8); 

    const queryText3 = `INSERT INTO boarding_passes (ticket_no, flight_id, boading_no, seat_no, boarding_time, gate, baggage_claim_no) VALUES($1, $2, $3, $4, $5, $6, $7)`
    await client.query(queryText3, [check.rows[0].ticket_no, req.params.vars1, boading_no ,seatNo, boarding_time, gate, bag])

    const add5 = `INSERT INTO boarding_passes (ticket_no, flight_id, boading_no, seat_no, boarding_time, gate, baggage_claim_no) VALUES(${check.rows[0].ticket_no}, ${req.params.vars1}, ${boading_no}, ${seatNo}, ${boarding_time}, ${gate}, ${bag})`
    append_transactions(add5)
    append_transactions('\n')

    
    console.log("insert success ")
    await client.query('COMMIT')
    append_transactions('COMMIT')
    append_transactions('\n')

  } catch (e) {
    await client.query('ROLLBACK')
    append_transactions('ROLLBACK')
    append_transactions('\n')
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

//send back the ticket number
app.get('/payment', async(req, res)=>{
  try{


    

    //const queryText = `SELECT ticket_no, fare_conditions , amount FROM ticket_flights WHERE ticket_no = ${ticket_no_ }`
    const queryText = `SELECT ticket_no, fare_conditions , amount FROM ticket_flights WHERE ticket_no = $1`
    
    const ans = await pool.query(queryText, [ticket_no_]); 
  
    append_file_sql('\n')
    append_file_sql("send back ticket number to client")
    const add = `SELECT ticket_no, fare_conditions , amount FROM ticket_flights WHERE ticket_no = ${ticket_no_}`
    append_file_sql(add);
    append_file_sql('\n')
    console.log(ans.rows); 
    res.json(ans.rows);

  } catch(err){
    console.log(err.message);
  }
});




//get the table for boarding pass
app.get('/bp/:ticketNumber', async(req, res)=>{
  try{

    const { id } = req.params.ticketNumber;

    console.log(req.params); 


   //console.log("in index.js" , req.params.ticketNumber);

    const queryText = `SELECT * FROM boarding_passes WHERE ticket_no = $1`
    
   const ans = await pool.query(queryText, [req.params.ticketNumber]); 
   // const ans = await pool.query(queryText); 

 
   append_file_sql('\n')
   append_file_sql('get boarding pass')
   const add = `SELECT * FROM boarding_passes WHERE ticket_no = ${req.params.ticketNumber}`
    append_file_sql(add);
    append_file_sql('\n')
    console.log(ans.rows); 
    res.json(ans.rows);

  } catch(err){
    console.log(err.message);
  }
});








//get all data from flight 
//get the input as req
app.get('/flight', async(req, res)=>{

  console.log("here"); 
  
  console.log(d, d1); 

  console.log(d_d, a_d); 
  

  try{



    


  if(a_d == ""){//one way flight
    console.log("no input for arrival date")
    const allFlights = await pool.query(`SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival
    FROM flights
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport
JOIN airports as arrival
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = $1 and arrival.airport_code = $2 and DATE(scheduled_departure) =$3 `, [d,d1, d_d]);

append_file_sql('select flight')
append_file_sql('\n')
const add = `SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival
FROM flights
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport
JOIN airports as arrival
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ${d} and arrival.airport_code = ${d1} and DATE(scheduled_departure) =${d_d} ` 

append_file_sql(add)

res.json(allFlights.rows);
console.log(allFlights);

  }
  else{
    const allFlights = await pool.query(`SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival
    FROM flights
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport
JOIN airports as arrival
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = $1 and arrival.airport_code = $2 and DATE(scheduled_departure) =$3 and DATE(scheduled_arrival) = $4`, [d,d1, d_d, a_d]);

append_file_sql('select flight')
append_file_sql('\n')
const add2 = `SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival
  FROM flights
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport
JOIN airports as arrival
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ${d} and arrival.airport_code = ${d1} and DATE(scheduled_departure) =${d_d} and DATE(scheduled_arrival) = ${a_d}`
append_file_sql('\n')
append_file_sql(add2)


//need to handle indirect flight 
//example ulv->dme (no direct flight)
//ulv->svo->dme



res.json(allFlights.rows);
console.log(allFlights);
  }




    
  } catch(err){

    console.log(err.message);
  }
});





//cancel 
app.put("/flight/:id", async (req, res) => {
  const { id } = req.params;
  const client = await pool.connect(); 
  console.log(id); 
try{
  var yes = 'yes'; 
  var status = 'cancel'
  await client.query('BEGIN')
  

  append_transactions('cancel')
  append_transactions('\n')

  append_transactions('BEGIN')
  
  append_transactions('\n')


  //update in ticket flight to available_buy to "yes"   avaliable for buy
  const queryText = `UPDATE ticket_flights SET available_buy = $1 WHERE ticket_no = $2`

  await client.query(queryText, [yes, id]); 

  const add1 = `UPDATE ticket_flights SET available_buy = ${yes} WHERE ticket_no = ${d}`
  append_transactions(add1)
  //update in ticket status to "cancel"



  const queryText2 = 'DELETE FROM tickets WHERE ticket_no = $1'
  await client.query(queryText2, [id]); 
  append_transactions('\n')
  const add2 = `'DELETE FROM tickets WHERE ticket_no = ${id}`
  append_transactions(add2)

  const queryText3 = 'DELETE FROM boarding_passes WHERE ticket_no = $1'
  await client.query(queryText3, [id]); 
  append_transactions('\n')
  const add3 = `'DELETE FROM boarding_passes WHERE  ticket_no = ${id}`
  append_transactions(add3)

 
  append_transactions(queryText3, [id])


///append to file

  
 
  console.log("cancel success ")
  append_transactions('\n')
  append_transactions('COMMIT')
  await client.query('COMMIT')
} catch (e) {
  await client.query('ROLLBACK')
  append_transactions('\n')
  append_transactions('ROLLBACK')
  throw e
} finally {
  client.release()
}
});






//delete a demo by id
/*app.delete("/demos/:id", async (req, res) => {
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
});*/

app.get('/ind', async(req, res)=>{
  try{
    console.log("here", d); 
    //choose all the intermediate flight
    const getMedium = await pool.query(`SELECT arrival_airport, scheduled_arrival FROM flights WHERE departure_airport = $1 AND DATE(scheduled_departure) = $2`, [d, d_d])
    
    console.log(getMedium.rows[0])
    
    
    /*for(let i = 0; i < getMedium.rows.length;i++ ){
      const a = await pool.query(`SELECT arrival_airport FROM flights WHERE departure_airport = getMedium.rows[i].arrival_airport AND departure_airport = $2`, [d1]); 
    }*/

    //const a = await pool.query(`SELECT arrival_airport FROM flights WHERE departure_airport = getMedium.rows[0].arrival_airport AND departure_airport = $2`, [d1]); 


    
    console.log(a.rows); 

    
    res.json(getMedium.rows);
  } catch(err){
    console.log(err.message);
  }
});

//?????               
app.get('*', function(req, res) {
  res.sendFile(path.join(__dirname + '/public/index.html'));
});

// set up the server listening at port 5000 (the port number can be changed)
const port = process.env.PORT || 5432;
app.listen(port, ()=>{
  console.log(`server has started on port ${port}`);
});







