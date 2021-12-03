// CREATE TABLE demo(
//   key integer PRIMARY KEY,
//   description VARCHAR(255)  
// );
// only two attributes in the table: todo_id and description
const { Pool } = require('pg');
// you can also use the online posrgres database: elephantSQL
//https://www.youtube.com/watch?v=BuJj4LCWP_4
//#postgres://username:password@hostname:port/database

/*const pool = new Pool({
  host: "kashin.db.elephantsql.com",
  user: "wibreuol",
  password: "YDFSzpIQJ0S7wgPIGNHFLxCLlH8Duppi",
  database: "wibreuol",
  port: "",
});*/
const pool = new Pool({
  host: '3380db.cs.uh.edu',
  user: 'dbs083',
  password: '2048659N',
  port: 5432,
  database: 'COSC3380'
});

/*const client = new Client({ //change back later 
  host: '3380db.cs.uh.edu',
  user: 'dbs123',
  password: 'dbs123',
  port: 5432,
  database: 'COSC3380'
});*/

module.exports = pool;
