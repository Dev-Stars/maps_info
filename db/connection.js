const mysql = require('mysql');
const faker = require('faker');


const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  database: 'maps_info',
});

connection.connect(function(err) {
  if (err) {
    console.error ('error connecting: ' + err);
    return;
  } console.log ('Connected to MYSQL DB');
});

const mockAddress =  `${faker.address.streetAddress()}, ${faker.address.city()}, ${faker.address.country()}`;
const queryStr = `INSERT INTO map (address, relative_location, phone_number, business_id) VALUES('${mockAddress}', '${mockAddress}', 12345, 2)`;
connection.query(queryStr, (err, results) => {
  if (err) {
    throw err;
  } else {
    console.log('INSERT FUNCTION SUCCESS', results);
  }
});


module.exports = connection;