let Utilities = artifacts.require("./Utilities.sol")
let Example = artifacts.require("./Example.sol")

module.exports = async deployer => {
    await deployer.deploy(Utilities)
    await deployer.link(Utilities, Example)
    await deployer.deploy(Example)
    console.log("Is Deployed: " + Example.isDeployed())
}
