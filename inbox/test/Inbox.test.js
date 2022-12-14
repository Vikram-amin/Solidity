// contract test code will go here

const assert = require('assert');
const ganache = require('ganache-cli');
const Web3 = require('web3');   // constrctor function
const web3 = new Web3(ganache.provider())
const {interface, bytecode} = require('../compile')



// class Car {
//     park() {
//         return 'stopped';
//     }

//     drive(){
//         return 'vroom';
//     }
// }

// let car;

// beforeEach(() => {
//    car = new Car();
// })


// describe('Car', () => {
//     it('can park', ()=>{
//         assert.equal(car.park(), 'stopped');
//     });

//     it('can drive', () => {
//         assert.equal(car.drive(), 'vroom')
//     })
// });


// ------------------------------------------

let accounts;
let inbox;

beforeEach( async() => {
 // get al list of all account 
 accounts =  await web3.eth.getAccounts();

 // use one of those accounts to deploy the contract
  inbox = new web3.eth.Contract(JSON.parse(interface))
  .deploy({data : bytecode, arguments : ['Hi there']})
  .send({ from : accounts[0], gas: '1000000'})
});


describe('Index', () => {
    it('deploys a contract', () => {
        // console.log(accounts)
        // console.log(inbox)

        assert.ok(inbox.options.address);
    });
});
