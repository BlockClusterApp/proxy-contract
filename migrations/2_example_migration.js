var Utilities = artifacts.require("./Utilities.sol")
var Example = artifacts.require("./Example.sol")

module.exports = async deployer => {
    await deployer.deploy(Utilities)
    await deployer.link(Utilities, Example)
    await deployer.deploy(Example)
}
