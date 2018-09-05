let Example = artifacts.require("./Example.sol")

contract("Example", accounts => {
    it("Test Balance", async _ => {
        let Example_Instance = await Example.deployed()
        let balance = await Example_Instance.testAssets()
        assert.equal(10000, balance);
    })
})
