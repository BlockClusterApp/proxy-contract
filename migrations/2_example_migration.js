let Utilities = artifacts.require("./Utilities.sol")
let Example = artifacts.require("./Example.sol")

module.exports = deployer => {
    deployer.deploy(Utilities)
    deployer.link(Utilities, Example)
    deployer.deploy(Example)
}
