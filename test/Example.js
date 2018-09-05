let Example = artifacts.require("./Example.sol")

contract("Example", accounts => {
    it("Test Balance", async () => {
        let Example_Instance = await Example.deployed()
        await Example_Instance.testAssets()
        let balance = await Example_Instance.getTestAssetBalance.call()
        assert.equal(10000, balance.toNumber());
    })
})
