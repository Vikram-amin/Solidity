const { expect } = require('chai');
const { ethers } = require('hardhat');

describe('Counter', () => {
    it('store the count', async () => {
         // Load contract
    const Counter = await ethers.getContractFactory('Counter')
    const counter = await Counter.deploy('My Counter', 1)
    const count = await counter.count()
        expect(count).to.equal(1)
        // fetch  the count and check count it what we whant export
    })
})
