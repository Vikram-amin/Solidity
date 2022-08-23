const { expect } = require('chai');
const { ethers } = require('hardhat');

describe('Counter', () => {




    it('Sets Initial count', async () => {
         // Load contract
    const Counter = await ethers.getContractFactory('Counter')
    const counter = await Counter.deploy('My Counter', 1)
    const count = await counter.count()
        expect(count).to.equal(1)
        // fetch  the count and check count it what we whant export
    })

        it("sets initial name ", async () => {
          // Load contract
          const Counter = await ethers.getContractFactory("Counter");
          const counter = await Counter.deploy("My Counter", 1);
          const name = await counter.name();
          expect(name).to.equal('My Counter');

        });
})
