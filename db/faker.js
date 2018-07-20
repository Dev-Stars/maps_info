const faker = require('faker');
const connection = require('./connection.js');

//const mockAddress =  faker.address.streetAddress() + faker.address.city() + faker.address.country();

const mockAddress = function() {
  var streetNum = [0,1,2,3,4,5,6,7,8,9];
  var streetName = ['fillmore st', 'grove st', 'hayes st', 'valencia st', 'mission st', 'brannan st', 'geary st', 'market st', 'folsom st', '1st st']
  var randomAddress = `${streetNum(Math.floor(Math.random() * 11))}, ${streetName(Math.floor(math.random() * 11))}, San Francisco, CA`
  return randomAddress;
}

const mockPhoneNum = function() {
  return faker.phoneNumber();
}

const 
module.exports = mockAddress;
